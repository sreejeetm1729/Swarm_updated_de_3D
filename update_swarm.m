function update = update_swarm(p,target,sum_swarm,i)
kc=0.05;
kr=2.5;
update=- kc * (p(:,i) - target) + kr * sum_swarm(:,i);
end