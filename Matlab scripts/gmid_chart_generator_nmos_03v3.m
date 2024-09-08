% Define the path to the directory
path = '##File Path##';

% Create cell arrays for storing vov, gm/id, gm/gds, id/W
vov = cell(1, 8);
gm_id = cell(1, 8);
gm_gds = cell(1, 8);
id_W = cell(1, 8);
W = 2e-6;

% Initialize the data storage
for i = 1:8
    vov{i} = [];
    gm_id{i} = [];
    gm_gds{i} = [];
    id_W{i} = [];
end

% Read data from the text files
for i = 1:8
    filename = sprintf('%sgmid_nmos_%d_nfet_03v3_tb.txt', path, i);
    try
        fid = fopen(filename, 'r');
        if fid == -1
            error('File %s not found.', filename);
        end
        while ~feof(fid)
            line = fgetl(fid);
            temp = str2double(strsplit(strtrim(line)));
            % Ensure temp has enough elements
            if numel(temp) >= 8
                vov_value = temp(1) - temp(6);
                if vov_value > 0
                    vov{i}(end+1) = vov_value;
                    gm_id{i}(end+1) = temp(2) / temp(4);
                    gm_gds{i}(end+1) = temp(2) / temp(8);
                    id_W{i}(end+1) = temp(4) / W;
                end
            end
        end
        fclose(fid);
    catch ME
        fprintf('Error: %s\n', ME.message);
    end
end

% Define labels for L values
L_labels = {'0.28u','0.3u', '0.5u', '1u', '1.5u', '2u', '2.5u', '3u'};

% Set figure size to be more rectangular
fig_width = 800; % Width of the figure in pixels
fig_height = 600; % Height of the figure in pixels

% Plot gm/id versus Vov
figure('Position', [50, 50, 1600,700]);
hold on;
for i = 1:8
    plot(vov{i}, gm_id{i}, '-', 'DisplayName', sprintf('L=%s', L_labels{i}));
end
xlabel('Vov');
ylabel('gm/id');
title('gm/id versus V_{ov}');
grid on;
legend;
hold off;

% Plot gm/gds versus gm/id
figure('Position', [50, 50, 1600,700]);
hold on;
for i = 1:8
    plot(gm_id{i}, gm_gds{i}, '-', 'DisplayName', sprintf('L=%s', L_labels{i}));
end
xlabel('gm/id');
ylabel('gm/gds');
title('gm/gds vs gm/id');
grid on;
legend;
hold off;

% Plot id/W versus gm/id
figure('Position', [50, 50, 1600,700]);
hold on;
for i = 1:8
    plot(gm_id{i}, id_W{i}, '-', 'DisplayName', sprintf('L=%s', L_labels{i}));
end
xlabel('gm/id');
ylabel('id/W');
title('id/W vs gm/id');
grid on;
legend;
hold off;
