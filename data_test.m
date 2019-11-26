clear all;
    
      x_target(1) = 5.3782;
      y_target(1) = 5.9729;
      x_target(2) = 5.5610;
      y_target(2) = 5.2516;
      x_target(3) = 5.8799;
      y_target(3) = 5.6718;
      x_target(4) = 5.9165;
      y_target(4) = 5.2155;
      x_target(5) = 5.5124;
      y_target(5) = 5.9351;
      
      X(1,1) = 0.7254;
      Y(1,1) = 0.2373;
      X(2,1) = 0.1755;
      Y(2,1) = 0.5699;
      X(3,1) = 0.8391;
      Y(3,1) = 0.2775;
      X(4,1) = 0.7393;
      Y(4,1) = 0.6418;
      X(5,1) = 0.3104;
      Y(5,1) = 0.6580;
      
      X(1,2) = 1.3904;
      Y(1,2) = 0.9841;
      X(2,2) = 0.9113;
      Y(2,2) = 1.2471;
      X(3,2) = 1.5611;
      Y(3,2) = 0.9693;
      X(4,2) = 1.5611;
      Y(4,2) = 0.9693;
      X(5,2) = 1.0967;
      Y(5,2) = 1.2758;
      
      X(1,3) = 1.9330;
      Y(1,3) = 1.8241;
      X(2,3) = 1.7100;
      Y(2,3) = 1.8489;
      X(3,3) = 2.1300;
      Y(3,3) = 1.6572;
      X(4,3) = 1.8580;
      Y(4,3) = 1.9242;
      X(5,3) = 1.9330;
      Y(5,3) = 1.8241;
    
      X(1,4) = 2.5472;
      Y(1,4) = 2.6133;
      X(2,4) = 2.4752;
      Y(2,4) = 2.4927;
      X(3,4) = 2.6727;
      Y(3,4) = 2.4970;
      X(4,4) = 2.6943;
      Y(4,4) = 2.4726;
      X(5,4) = 2.5472;
      Y(5,4) = 2.6133;
      
      X(1,5) = 3.2149;
      Y(1,5) = 3.3577;
      X(2,5) = 3.1158;
      Y(2,5) = 3.2606;
      X(3,5) = 3.2869;
      Y(3,5) = 3.2862;
      X(4,5) = 3.4900;
      Y(4,5) = 3.0783;
      X(5,5) = 3.2149;
      Y(5,5) = 3.3577;
      
      X(1,6) = 3.7778;
      Y(1,6) = 4.1843;
      X(2,6) = 3.9307;
      Y(2,6) = 3.8402;
      X(3,6) = 3.9547;
      Y(3,6) = 4.0305;
      X(4,6) = 4.2857;
      Y(4,6) = 3.6840;
      X(5,6) = 3.7778;
      Y(5,6) = 4.1843;
      
      X(1,7) = 4.5178;
      Y(1,7) = 4.8569;
      X(2,7) = 4.7236;
      Y(2,7) = 4.4495;
      X(3,7) = 4.5178;
      Y(3,7) = 4.8569;
      X(4,7) = 4.7517;
      Y(4,7) = 4.4110;
      X(5,7) = 4.3569;
      Y(5,7) = 4.9995;
      
      X(1,8) = 4.7454;
      Y(1,8) = 5.3020;
      X(2,8) = 5.4307;
      Y(2,8) = 5.1566;
      X(3,8) = 4.8570;
      Y(3,8) = 5.2242;
      X(4,8) = 5.2450;
      Y(4,8) = 4.4926;
      X(5,8) = 4.7092;
      Y(5,8) = 5.3479;
      
      X(1,9) = 5.3723;
      Y(1,9) = 6.0812;
      X(2,9) = 5.6330;
      Y(2,9) = 5.4142;
      X(3,9) = 5.7127;
      Y(3,9) = 5.7417;
      X(4,9) = 5.8501;
      Y(4,9) = 5.2887;
      X(5,9) = 5.5111;
      Y(5,9) = 5.9452;
      
  K = 1;
  
  fid = figure;
  hold on
  writerObj = VideoWriter('out.avi'); 
  writerObj.FrameRate = 2; 
  open(writerObj); 
  e = 0;
  
  for k = 1:9
    e = e + 1;
    
  
       pause(0.5);
       figure(fid);
       
      %figure; 
     for j = 1:5
       theta = 0:1:360;
       Circle1=X(j,e)+1*cosd(theta);
       Circle2=Y(j,e)+1*sind(theta);
       plot(Circle1,Circle2,'black','linewidth',1);
       axis equal
       hold on;
     end
     
    syms a b;
    r = 1;
    plot(x_target(1:5),y_target(1:5),'+','markersize',10);
    text(x_target(1),y_target(1),'target1','FontSize',12);
    text(x_target(2),y_target(2),'target2','FontSize',12);
    text(x_target(3),y_target(3),'target3','FontSize',12);
    text(x_target(4),y_target(4),'target4','FontSize',12);
    text(x_target(5),y_target(5),'target5','FontSize',12);
    hold on
    
    plot(X(1:5,e),Y(1:5,e),'+','markersize',10);
    text(X(1,e),Y(1,e),'node1','FontSize',12);
    text(X(2,e),Y(2,e),'node2','FontSize',12);
    text(X(3,e),Y(3,e),'node3','FontSize',12);
    text(X(4,e),Y(4,e),'node4','FontSize',12);
    text(X(5,e),Y(5,e),'node5','FontSize',12);
           
     
     K = 1;
    
    frame = getframe(gcf); 
    writeVideo(writerObj, frame);
    hold off
 end
    
 hold off
 close(writerObj); 