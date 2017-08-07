package Test_News;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.net.URL;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;



public class Test_Image_Extracting {
	
	 public static void help_media( String s1 )
	    {
		 
		    	BufferedImage image = null;
		        try {
		            URL url = new URL(s1);
		            image = ImageIO.read(url);
		        } catch (IOException e) {
		        	e.printStackTrace();
		        }

		        JFrame frame = new JFrame();
		        frame.setSize(300, 300);
		        JLabel label = new JLabel(new ImageIcon(image));
		        frame.add(label);
		        frame.setVisible(true);
		    
	    }
}
