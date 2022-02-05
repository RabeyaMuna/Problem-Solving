import javax.media.opengl.GL2;
import javax.media.opengl.GLAutoDrawable;
import javax.media.opengl.GLEventListener;
import javax.media.opengl.glu.GLU;

/**
 *
 * @author Muna
 */
public class MidPointCircle  implements GLEventListener {
    /**
     * Interface to the GLU library.
     */
    private GLU glu;

    /**
     * Take care of initialization here.
     * @param gld
     */
    @Override
    public void init(GLAutoDrawable gld) {
        GL2 gl = gld.getGL().getGL2();
        glu = new GLU();

        gl.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        gl.glViewport(-250, -150, 250, 150);
        gl.glMatrixMode(GL2.GL_PROJECTION);
        gl.glLoadIdentity();
        glu.gluOrtho2D(-250.0, 250.0, -150.0, 150.0);
    }

    /**
     * Take care of drawing here.
     * @param drawable
     */
    @Override
    public void display(GLAutoDrawable drawable) {
        GL2 gl = drawable.getGL().getGL2();

        gl.glClear(GL2.GL_COLOR_BUFFER_BIT);
        /*
         * put your code here
         */
       //points should be in the same zone
        DrawMPL(gl,2,3,50);
       
    }

    @Override
    public void reshape(GLAutoDrawable drawable, int x, int y, int width, int height) {
        //do nothing
    }

    public void displayChanged(GLAutoDrawable drawable, boolean modeChanged, boolean deviceChanged) {
        //do nothing
    }
   
    int dx, dy, b;
    private void DrawMPL(GL2 gl, int x1, int y1,int r) {
       //write your own code
       gl.glPointSize(1.0f);
       gl.glColor3d(1, 0, 0);
                   
       gl.glBegin(GL2.GL_POINTS);      
       
       int x=0;
       int y=r;
       int d=5-4*r;
       while(x<y) {
   
      if(d<0) {
          d+=2*x+3;
          ++x;
           }
           else
           {
         d+=2*(x-y)+5;
         ++x;
         --y;
         
           }
      gl.glVertex2d(x+x1, y+y1);  
      gl.glVertex2d(y+x1, x+y1);
      gl.glVertex2d(-x+x1, y+y1);
      gl.glVertex2d(y+x1, -x+y1);
      gl.glVertex2d(-x+x1, -y+y1);
      gl.glVertex2d(-y+x1, -x+y1);
      gl.glVertex2d(x+x1, -y+y1);
      gl.glVertex2d(-y+x1, x+y1);
       }
     
     // gl.glVertex2d(x1, y1);          
    //  gl.glVertex2d(x2, y2);          

       gl.glEnd();
    }
   
   
    private int func(int x, float y){
        return (int)(dy*x - y*dx + b*dx);
    }
   
   
    int findZone(int x1, int y1, int x2, int y2) {
    int dx = x2-x1;
    int dy = y2-y1;
    System.out.println(dx+" "+dy);
    int zone=0;
    if(Math.abs(dx)>=Math.abs(dy))
    {
     if(dx>=0&&dy>=0)return 0;
     else if(dx<=0&&dy>=0)return 3;
     else if(dx<=0&&dy<=0)return 4;
     else return 7;
    }
    else
    {
     if(dx>=0&&dy>=0)return 1;
     else if(dx<=0&&dy>=0)return 2;
     else if(dx<=0&&dy<=0)return 5;
     else return 6;
    }
    }
   
    int convertX(int x, int y, int zone){
        int convertedX=0;      
        return convertedX;
    }
   
    int convertY(int x, int y, int zone){
       int convertedY=0;        
       return convertedY;
    }
   
   
    public void dispose(GLAutoDrawable arg0) {
        //do nothing
    }
}

