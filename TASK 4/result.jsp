<%
String s=request.getParameter("E1");
String t=request.getParameter("E2");
int u=Integer.parseInt(request.getParameter("E3"));
int v=Integer.parseInt(request.getParameter("E4"));
int w=Integer.parseInt(request.getParameter("E5"));
int x=u+v+w;
int y=x/3;

out.println("<center><h1>Roll Number="+s+"</h1></center>");
out.println("<center><h1>Student Name="+t+"</h1></center>");
out.println("<center><h1>Subject 1="+u+"</h1></center>");
out.println("<center><h1>Subject 2="+v+"</h1></center>");
out.println("<center><h1>Subject 3="+w+"</h1></center>");
out.println("<center><h1>Total="+x+"</h1></center>");
out.println("<center><h1>Average="+y+"</h1></center>");
if(u>=40)
out.println("<center><h1>Result=Pass</h1></center>");
else
out.println("<center><h1>Result=Fail</h1></center>");
if(y>=90)
out.println("<center><h1>Grade=A+</h1></center>");
else if(y>=80 && y<90)
out.println("<center><h1>Grade=A</h1></center>");
else if(y>=70 && y<80)
out.println("<center><h1>Grade=B</h1></center>");
else if(y>=60 && y<70)
out.println("<center><h1>Grade=C</h1></center>");
else if(y>=40 && y<60)
out.println("<center><h1>Grade=D</h1></center>");
else
out.println("<center><h1>Grade=E</h1></center>");
%>
