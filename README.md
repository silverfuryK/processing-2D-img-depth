# processing-2D-img-depth
creating an effect of depth from 2D images


this processing program works by including 2 versions of a any 2d image.

Version 1 being a colored version to map correct color in the moving depth image. stored as 'XXX_col.jpeg', 'XXX_col.jpg',or 'XXX_col.png' in 'img' folder.

Version 2 being a black and white image acting as a depth map for the 'depth' effect. stored as 'XXX_k.jpeg', 'XXX_k.jpg',or 'XXX_k.png' in 'depth' folder.

The depth image can be modified in any image manipulation software like Photoshop etc to highlight different areas of the image.

Accuracy can be set by changing the x and y increment in the loop of the main .pde file
