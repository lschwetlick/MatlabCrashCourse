% function [outVec] = filter5(inVec)
%     outVec=[];
%     for i=inVec
%         if i<5
%             outVec=[outVec, i];
%         end
%     end
% end

function [outVec] = filter5(inVec)
    lv=inVec<5;
    outVec=inVec(lv);
end
