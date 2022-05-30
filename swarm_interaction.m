function sum_swarm = swarm_interaction(p,N,r_s)
sum_swarm=zeros(3,N);
for i=1:N
    for j=1:N
        sum_swarm(:,i)=sum_swarm(:,i)+exp(-norm(p(:,i)-p(:,j))/(r_s)^2)*(p(:,i)-p(:,j));
    end
end
end