function [nosilence] = silence(SIG)

    th = .10;
    tmpsig = SIG/max(SIG);
    sth = (abs(tmpsig)>th);
    N  = length(tmpsig)
    
    for i = 1:N
        if(sth(i) == 1)
            sigstart = i;
            break
        end
    end
    sigstart
    sig = SIG(sigstart:end);
    sth = sth(sigstart:end);
    N = N - sigstart
    figure
    subplot(311),
    plot(1:length(tmpsig),tmpsig);
    subplot(312)
    plot(1:length(sth),sth);
    
    for  i = N:-1:1
        if sth(i) == 1
            sigend = i
            break
        end
    end
    sigend
    sig = sig(1:sigend);
    nosilence = sig;
    length(sig)
    figure
    plot(1:length(sig),sig)
end
    