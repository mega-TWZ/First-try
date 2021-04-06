%%%  画圆
aplha=0:pi/40:2*pi;
r=1;
x=r*cos(aplha);
y=r*sin(aplha);
plot(x,y,'-k');
hold on;
axis equal

%%% 画十字箭头坐标轴
x=-2.5:2.5;
y=-2.5:2.5;
plot([0 0],[min(y),max(y)],'k',[min(x),max(x)],[0 0],'k');
ax=[max(x),max(x)-0.5,max(x)-0.5;0,0.075,-0.075];
fill(ax(1,:),ax(2,:),'k');
ay=[0,0.075,-0.075;max(y),max(y)-0.5,max(y)-0.5];
fill(ay(1,:),ay(2,:),'k');

%%% 标X,Y,R,O,Z
text(0.5,0.5,'z','FontSize',18);
text(1.1,1,'z_{1}=1/z^{*}','FontSize',18);
text(1.1,-1,'\zeta=1/z','FontSize',18);
text(0.25,2,'y','FontSize',20);
text(2,-0.25,'x','FontSize',20);
text(-0.7,0.5,'R','FontSize',18);
text(-0.25,-0.25,'O','FontSize',18);

%%% 画虚线
a=complex(0.5,0.5);
line([0,real(a)],[0,imag(a)])
b=conj(a);  c=1/a;  d=1/b;
line([0,real(c)],[0,imag(c)]);
line([ real(c),real(d)],[ imag(c),imag(d)]);
line([ real(a),real( d)],[ real(a),imag( d)]);
line([0,-0.9],[0,(1-0.9.^2).^0.5]);

