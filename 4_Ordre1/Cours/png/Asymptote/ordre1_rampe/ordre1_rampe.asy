import graph;

size(400,300,IgnoreAspect);

real xmin=0;
real xmax=5;
real ymin=0;
real ymax=1.2;

real incX = 1;
real incx = incX/5;
real incY = 1;
real incy = incY/5;


xlimits(xmin, xmax);
ylimits(ymin, ymax);

import graph;
real K = 0.9;
real E = 1;
real tau = 1;
real A = 1;

real f(real t){return (K*A)*(t-tau+tau*exp(-t/tau));}
path p=graph(f,0,5,operator ..);
draw(p,red+4bp);

real f2(real t){return (K*E*t/tau);}
path p2=graph(f2,0,5,operator ..);
draw(p2,blue+2bp);

real f3(real t){return (-0.9+(K*E*t/tau));}
path p3=graph(f3,0,5,operator ..);
draw(p3,red+dashed);

//xaxis("$t$ ($s$)", BottomTop(), Ticks(Label("$%.2f$",black), Step=incX, step=incx, pTick=mediumgray, ptick=lightgray+dashed, extend=true));
//yaxis("", LeftRight(), Ticks(Label("$%.2f$",black), Step=incY, step=incy, pTick=mediumgray, ptick=lightgray+dashed, extend=true));
xaxis("$t$ ($s$)", BottomTop(), Ticks(Label(" ",black), Step=incX, step=incx, pTick=mediumgray, ptick=lightgray+dashed, extend=true));
yaxis("", LeftRight(), Ticks(Label(" ",black), Step=incY, step=incy, pTick=mediumgray, ptick=lightgray+dashed, extend=true));


//yequals("",1,blue);

yequals("",ymin,black);
//yequals("",ymax,black);
xequals("",xmin,black);
xequals("",xmax,black);

//yequals("",1,black);



draw("$t=\tau$",(tau,-0.3),black);
//draw("$t=3\tau$",(3*tau,-0.1),black);
//draw("$0,63 K$",(-0.5,0.63*K),black);
//draw("$0,95 K$",(-0.5,0.95*K),black);
//draw("$K$",(-0.5,K+0.05),black);

//draw("$K/(e\tau)$",(-0.25,f(tau)),black);


//draw("$y(t)$",(1.5,0.1),blue);

//draw("$e(t)$",(8,1.05),black);
//draw("$s(t)$",(8,0.85),red);

pair a=(0,K*0.63);
pair b=(tau,f(tau));
pair c=(tau,0);
path pp=a--b--c;
//draw(pp,dashed);

pair d=(0,K);
pair e=(10,K);
path pp2=d--e;
//draw(pp2,dashed+red);

pair d=(0,0.95*K);
pair e=(3*tau,0.95*K);
pair f=(3*tau,00);
path pp2=d--e--f;
//draw(pp2,dashed+green);

pair g=(4,f(4));
pair h=(4,f2(4));
path pp3=g--h;
draw(pp3,purple,Arrow);
path pp4=h--g;
draw(pp4,purple,Arrow);

draw("$\varepsilon_V=AK\tau$",(3.3,3.6),purple);

add(scale(0.7)*legend(1),point(NE),5S+5W,UnFill);
//draw(graph(t,j),red+linewidth(2)+dotted,"Jerk ($mm/s^3$)");
