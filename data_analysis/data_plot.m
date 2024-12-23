function data_plot(x,data,color)
    x1 = x + 0.1 * randn(size(data)); % Jitter around odd x-positions
    scatter(x1, data,10,color,'filled','MarkerEdgeAlpha',0.5,'MarkerFaceAlpha',0.5); % Density 1

    % Calculate means and standard errors
    mean_val = mean(data);  % Mean of the group data
    stderr_val = std(data) / sqrt(length(data));  % Standard error

    % Plot error bars (same mean and error for x1 and x2 for simplicity)
    errorbar(x, mean_val, stderr_val, 'k.', 'MarkerSize', 12, 'LineWidth', 1.2);
end