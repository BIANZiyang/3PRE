% NEESANALYSIS  NEES analysis for slamtb.
%   NEESANALYSIS is a script for evaluating average NEES performance of
%   slamtb. It uses a slave version of SLAMTB, called SLAMTBSLAVE, and runs
%   it for N times with different kinds of landmarks.
%
%   Specify the types of landmarks in variable:  lmkTypes.
%   Specify the number of runs for each lmk in:  numRuns.
%   Specify the length of each run in         :  numFrames.
%   Specify the destination of log files in   :  logsDir.
%   Specify the rendering period in           :  rendPeriod.
%   Specify lmk parametrization with the flag :  reparametrize.
%   Specify N random seeds in                 :  randSeeds.
%
%   The result of this process is a set of log files. The contents of these
%   files can be plotted with NEESPLOTS.
%
%   See also SLAMTBSLAVE, NEESPLOTS, NEES, ROBOTNEES.

errorAnalysisFunction = @robotNees;
logsDir    = '~/SLAM/logs/pose6d/';
logFileHeader = 'frame NEES';

% lmkTypes   = {'ahmPnt','hmgPnt'};
lmkTypes   = {'hmgPnt','idpPnt','ahmPnt'};
% lmkTypes   = {'hmgPnt'};
% lmkTypes   = {'idpPnt','ahmPnt'};
% lmkTypes   = {'idpPnt'};
% lmkTypes   = {'plkLin','aplLin','hmgLin','idpLin','ahmLin'};
% lmkTypes   = {'aplLin','idpLin','ahmLin'};
% lmkTypes   = {'idpLin','ahmLin'};
% lmkTypes   = {'aplLin'};
% lmkTypes   = {'plkLin','aplLin'};

numRuns    = 25;
numFrames  = 200;

rendPeriod = 25;
reparametrize = false;
pixelNoise = 1;
noiseFactor = 1;

% randSeeds  = round(10000*rand(1,numRuns));

randSeeds = [8687 8440 3999 2599 8001 4314 9106 1818 2638 1455 1361 8693 5797 5499 1450 8530 6221 3510 5132 4018 7600 2399 1233 1839 2400];
% save [logsDir 'randSeeds.log'] randSeeds -ascii

for l = 1:numel(lmkTypes)
    lmkType = lmkTypes{l};
    for nRun = 1:numRuns
        disp(' ')
        disp('==============================')
        fprintf('Lmk type: %s -- Run #: %d\n',lmkType, nRun);
        disp('==============================')
        logFileName = [logsDir lmkType '-' num2str(nRun,'%02d') '.log'];
%         logFileName = [lmkType '-' num2str(nRun,'%02d') '.log']
        slamtbSlave;
    end
end

neesPlots;


% ========== End of function - Start GPL license ==========


%   # START GPL LICENSE

%---------------------------------------------------------------------
%
%   This file is part of SLAMTB, a SLAM toolbox for Matlab.
%
%   SLAMTB is free software: you can redistribute it and/or modify
%   it under the terms of the GNU General Public License as published by
%   the Free Software Foundation, either version 3 of the License, or
%   (at your option) any later version.
%
%   SLAMTB is distributed in the hope that it will be useful,
%   but WITHOUT ANY WARRANTY; without even the implied warranty of
%   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%   GNU General Public License for more details.
%
%   You should have received a copy of the GNU General Public License
%   along with SLAMTB.  If not, see <http://www.gnu.org/licenses/>.
%
%---------------------------------------------------------------------

%   SLAMTB is Copyright 2007,2008,2009 
%   by Joan Sola, David Marquez and Jean Marie Codol @ LAAS-CNRS.
%   See on top of this file for its particular copyright.

%   # END GPL LICENSE

