clear
P=tree;
P.name="P";
K=tree;
K.name="K";
K.children=P;
L=tree;
L.name="L";
L.children=P;
J=tree;
J.name="J";
J.children=L;
I=tree;
I.name="I";
I.children=[K,J];
H=tree;
H.name="H";
H.children=[I,K];
G=tree;
G.name="G";
G.children=J;
E=tree;
E.name="E";
E.children=H;
F=tree;
F.name="F";
F.children=[E,I];
D=tree;
D.name="D";
D.children=H;
C=tree;
C.name="C";
C.children=[F,G];
B=tree;
B.name="B";
B.children=[E,F];
A=tree;
A.name="A";
A.children=D;
M=tree;
M.name="M";
M.children=[A,B,C];

q=queue;
q=q.push(M);
while true
    [q,b]=q.pop();
    for i=1:length(b.children)
        b.children(i).parent=b;
        q=q.push(b.children(i));
    end
    if b.name=="P"
        break
    end
end
m='';
j=1;
while true
    if length(b)==0
        break
    end
    m(j)=b.name;
    b=b.parent;
    j=j+1;
end
fprintf(fliplr(m))
