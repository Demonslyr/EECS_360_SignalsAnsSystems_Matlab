function AP = Calculate_AP(a,s)
       %arguments: 1 int and a row vector a,[s]
       %returns: 2xn array [Area of shape:n; Perimeter of shape:n]
       AP = zeros(2,1);
        if a == 1 %Circle
            for i = 1:size(s,2)
            AP(1,i) = (2*pi*s(i));%Area Calculation
            AP(2,i) = (pi*s(i)^2);%Perimeter Calculation
            end
        elseif a == 2 %Triangle
            
            for i = 1:3
                if s(i)==max(s)
                    z = s(i);
                elseif s(i) == min(s)
                    x = s(i);
                else
                    y = s(i);
                end
            end
            
            k = 0.5*(x+y+z);
            
            AP(1,1) = (k*(k-x)*(k-y)*(k-z))^0.5;%Area Calculation
            AP(2,1) = x+y+z;%Perimeter Calculation
            
            
        elseif a == 3 %Pentagon            
            for i = 1:size(s,2)
            AP(1,i) = 0.25*(5*(5+2*(5^(1/2))))*(s(i)^2);%Area Calculation
            AP(2,i) = s(i)*5;%Perimeter Calculation
            end
        elseif a == 4 %Hexagon            
            for i = 1:size(s,2)
            AP(1,i) = ((3*(3^(1/3)))/2)*(s(i)^2);%Area Calculation
            AP(2,i) = s(i)*6;%Perimeter Calculation
            end
        else
            disp('\n\nERROR: Shape Selection Not Valid. Ya done goofed man...\n')
            AP=0;
        end
end