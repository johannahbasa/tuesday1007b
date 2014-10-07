
/*
 * Main.eq
 * Generated by Eqela Studio 2.0b7.4
 */


public class Main : SEScene
{
	
	SESprite sprite1;
	SESprite sprite2;
	SESprite sprite3;
	SESprite sprite4;
	SESprite text;
	SESprite upperLeft;
    SESprite upperRight;
    SESprite lowerLeft;
    SESprite lowerRight;
	double trans=0;
        
    public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
        add_sprite_for_color(Color.instance("blue"),get_scene_width(),get_scene_height());
        rsc.prepare_image("myimage3","myimage3",get_scene_width()*0.3,get_scene_height()*0.39);
        rsc.prepare_image("myimage4","myimage4",get_scene_width()*0.3,get_scene_height()*0.3);
        rsc.prepare_image("myimage5","myimage5",get_scene_width()*0.3,get_scene_height()*0.39);
        rsc.prepare_image("myimage6","myimage6",get_scene_width()*0.3,get_scene_height()*0.39);
		rsc.prepare_font("myfont","bold arial color=white outline-color=red",get_scene_height()*0.05);
        sprite1 = add_sprite_for_image(SEImage.for_resource("myimage3"));
        sprite2 = add_sprite_for_image(SEImage.for_resource("myimage4"));
    	sprite3 = add_sprite_for_image(SEImage.for_resource("myimage5"));
 	   sprite4 = add_sprite_for_image(SEImage.for_resource("myimage6"));
		text = add_sprite_for_text("Click", "myfont");
        sprite1.move(300,90);
        sprite2.move(1000,110);
        sprite3.move(850,560);
        sprite4.move(100,500);
		text.move(100,100);
    }
    

    public void on_key_press(String name, String str) {
                base.on_key_press(name,str);
                text.set_text("on_key_press");
        }
    public void on_key_release(String name, String str) {
                base.on_key_press(name,str);
                text.set_text("on_key_release");
        }
  public void on_pointer_press(SEPointerInfo pi) {
            base.on_pointer_press(pi);
            if(pi.is_inside(0,0,0.5*get_scene_width(), 0.5*get_scene_height())) {
                text.set_text("Patrick Star!");
                text.move(0.30 * get_scene_width()-text.get_width()*0.5, 0.30 * get_scene_height()-text.get_height()*0.5);
                                sprite1.set_alpha(0.50);
                sprite2.set_alpha(1);
                sprite3.set_alpha(1);
                sprite4.set_alpha(1);
            }
            else if(pi.is_inside(0,get_scene_height()*0.5, 0.5*get_scene_width(), 0.5*get_scene_height())) {
                text.set_text("Mr. Krab");
                text.move(0.17 * get_scene_width(), 0.77*get_scene_height());
                                sprite1.set_alpha(1);
                sprite2.set_alpha(1);
                sprite3.set_alpha(1);
                sprite4.set_alpha(0.50);
            }
            else if(pi.is_inside(get_scene_width()*0.5,0, 0.5*get_scene_width(), 0.5*get_scene_height())) {
                text.set_text("Spongebob!");
                text.move(0.56 * get_scene_width(), 0.29*get_scene_height());
                                sprite1.set_alpha(1);
                sprite2.set_alpha(0.50);
                sprite3.set_alpha(1);
                sprite4.set_alpha(1);
            }
            else if(pi.is_inside(get_scene_width()*0.5,get_scene_height()*0.5, 0.5*get_scene_width(), 0.5*get_scene_height())) {
                text.set_text("Squidwart!");
                text.move(0.57 * get_scene_width(), 0.75*get_scene_height());
                                sprite1.set_alpha(1);
                sprite2.set_alpha(1);
                sprite3.set_alpha(0.50);
                sprite4.set_alpha(1);
            }
            
        }
        public void set_alpha(double alpha) {
                trans =alpha;
                
        }
         public void cleanup() {
                base.cleanup();
        }
}
                
