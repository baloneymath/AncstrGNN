import pyparsing as _p
import sys

def parse(sym_string):
    # newline are part of the grammar, thus redifine the whitespaces without it
    ws = ' \t'
    _p.ParserElement.setDefaultWhitespaceChars(ws)

    # spectre netlist grammar definition
    EOL = _p.LineEnd().suppress() # end of line
    identifier=_p.Word(_p.alphanums+'_!<>-+/') # a name for...
    inst = identifier # a net
    linebreak = _p.Suppress(_p.LineEnd()) # breaking a line with backslash newline
    pair = _p.Group(_p.OneOrMore(inst('inst'))+linebreak) # many nets
    symgroup = _p.Group(_p.OneOrMore(pair('pair')))
    ckt_name = identifier
    ckt_sym = _p.Group(ckt_name('name') + linebreak + symgroup('group')+EOL)
    sym = _p.Group(_p.OneOrMore(ckt_sym)+EOL).setResultsName('sym')    
    sym.setParseAction(handle_sym)
    return sym.parseString(sym_string)[0]

def handle_sym(token):
    sym = dict()
    for subckt in token['sym']:
        sym[subckt['name']] = list()
        for pairs in subckt['group']:
            if len(pairs) <= 2:
                sym[subckt['name']].append(set(pairs))
            else:
                for i in range(len(pairs)-1):
                    for j in range(i+1, len(pairs)):
                        sym[subckt['name']].append(set([pairs[i], pairs[j]]))
    return sym

