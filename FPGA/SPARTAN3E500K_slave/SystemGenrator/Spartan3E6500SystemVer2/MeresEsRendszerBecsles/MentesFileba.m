function [  ] = MentesFileba(Adat,fileName)
%MENTESFILEBA Summary of this function goes here
%   Detailed explanation goes here
    try
        load(fileName)
        [sa,sb]=size(dataToFile);
        dataToFile{sa+1} = {Adat};
        save(fileName,'dataToFile')
    catch
        dataToFile={} 
        save(fileName,'dataToFile')
        dataToFile{1} = {Adat};
        save(fileName,'dataToFile')
    end
end

