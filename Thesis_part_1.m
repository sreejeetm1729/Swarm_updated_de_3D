N = 30;
% theta=0+pi*rand(1,N);
% phi=0+(pi/2)*rand(1,N);
% p = [100*sin(phi).*cos(theta);100*sin(phi).*sin(theta);100*cos(phi)];
TH = 2*pi*rand(1,N);
PH = asin(-1+2*rand(1,N));
[X,Y,Z] = sph2cart(TH,PH,30);
p=[X;Y;Z].*-10;
% p=rand(3,N);
pstore=[];
r_s = 0.028;
dt = 0.1;
k=[300;300;300];
nIT = 500;
plot_update(:,:,:)=zeros(3,N);
for it=1:nIT
    pu=[];
    %pstore=[pstore p];
    plot_update(:,:,it)=p;
    for i=1:N
        check=swarm_interaction(p,N,r_s);
        update=update_swarm(p,k,check,i);
        pu=[pu update];
        for j=1:N
            p(:,j)=p(:,j)+ update * dt;
        end
    end
end
c=1:N;
scatter3(plot_update(1,:,1),plot_update(2,:,1),plot_update(3,:,1),"blue");
hold on
%scatter3(k(1,:),k(2,:),k(3,:),"red","filled");
hold on
%q=[plot_update(1,1,1),plot_update(2,1,1)];
colormap(gca,'winter')
for kl = 2:290 %loop
    %for jl=1:N
        %q=[plot_update(1,jl,kl),plot_update(2,jl,kl)];
        %hold on
        scatter3(plot_update(1,:,kl),plot_update(2,:,kl),plot_update(3,:,kl),"blue");
        hold on
        scatter3(k(1,:),k(2,:),k(3,:),"red","filled");
        xlim([-1500 1500])
        ylim([-1500 1500])
        zlim([-1500 1500])
        colormap(gca,'winter')
        %draw now;
        hold off
    %end
    %hold on
    pause(2)
end