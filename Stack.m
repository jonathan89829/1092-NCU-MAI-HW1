classdef Stack
    properties
        top=1
        value=tree.empty
    end
    methods
        function obs=push(obs,o)
            obs.value(obs.top)=o;
            obs.top=obs.top+1;
        end
        function [obs,b]=pop(obs)
            if obs.top~=1
                b=obs.value(obs.top-1);
                obs.value(obs.top-1)=[];
                obs.top=obs.top-1;
            end
        end
    end
end
