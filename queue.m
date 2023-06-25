classdef queue
    properties
        top=1
        bottom=1
        value=tree.empty
    end
    methods
        function obs=push(obs,o)
            obs.value(obs.top)=o;
            obs.top=obs.top+1;
        end
        function [obs,b]=pop(obs)
            b=obs.value(obs.bottom);
            obs.value(obs.bottom)=[];
            obs.top=obs.top-1;
        end
        function [obs,b]=popCost(obs,z)
            b=obs.value(z);
            obs.value(z)=[];
            obs.top=obs.top-1;
        end
    end
end