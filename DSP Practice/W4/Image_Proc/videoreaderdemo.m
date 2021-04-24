vr = VideoReader('origdave.avi');
vidFrames = read(vr);
numFrames = get(vr, 'NumberOfFrames');
for k = 1:numFrames
    mov(k).cdata = vidFrames(:, :, :, k);
    mov(k).colormap = [];
end

movie(mov, 1, get(vr, 'FrameRate'));
