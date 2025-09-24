describe 'Matcher output' do
    it { expect{puts 'Guilherme'}.to output.to_stdout}
    it { expect{print 'Guilherme'}.to output('Guilherme').to_stdout}
    it { expect{puts 'Guilherme'}.to output(/Guilherme/).to_stdout}

    it { expect { warn "Guilherme" }.to output.to_stderr }
    it { expect { warn "Guilherme" }.to output("Guilherme\n").to_stderr }
    it { expect { warn "Guilherme" }.to output(/Guilherme/).to_stderr }
end

