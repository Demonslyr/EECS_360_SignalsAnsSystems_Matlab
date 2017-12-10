function V = Calculate_volume(a,s)
       %arguments: 1 int and a row vector a,[s] 
       %Expects (integer, [radius/edge length, radius])
       %returns: 2xn array [Volume of shape]
       V = zeros(1,size(s,2));
        if a == 1 %Sphere
            
            V(1,1) = ((4/3)*pi*(s(1)^3));%Volume Calculation
            
        elseif a == 2 %Cylinder
            
            V(1,1) = (pi*s(2)^2*s(1));%Volume Calculation. Expects [height, radius]
            
        elseif a == 3 %Right Cone            
            
            V(1,1) = (pi*(s(2)^2)*(s(1)/3));%Volume Calculation. Expects [height, radius]
           
        elseif a == 4 %Cube            
            
            V(1,1) = (s(1)^3);%Volume Calculation
            
        else
            disp('\n\nERROR: Shape Selection Not Valid. Ya done goofed man...\n')
            V=0;
        end
end