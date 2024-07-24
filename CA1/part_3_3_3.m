input_file_path = 'ABITW.mp3'; 
output_file_path = 'ABITW2.wav';
[y, Fs] = audioread(input_file_path);
new_Fs = 2 * Fs;
y_resampled = resample(y, new_Fs, Fs);
audiowrite(output_file_path, y_resampled, new_Fs);

