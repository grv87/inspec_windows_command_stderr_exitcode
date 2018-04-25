path = File.expand_path(__dir__)
control 'test' do
  describe command("cmd /c #{path}\\..\\tests\\stdout_0.bat") do
    its('stdout') { should eq "Test stdout_0\r\n" }
    its('stderr') { should eq '' }
    its('exit_status') { should eq 0 }
  end
  describe command("cmd /c #{path}\\..\\tests\\stdout_1.bat") do
    its('stdout') { should eq "Test stdout_1\r\n" }
    its('stderr') { should eq '' }
    its('exit_status') { should eq 1 }
  end
  describe command("cmd /c #{path}\\..\\tests\\stderr_0.bat") do
    its('stdout') { should eq '' }
    its('stderr') { should eq "Test stderr_0\r\n" }
    its('exit_status') { should eq 0 }
  end
  describe command("cmd /c #{path}\\..\\tests\\stderr_1.bat") do
    its('stdout') { should eq '' }
    its('stderr') { should eq "Test stderr_1\r\n" }
    its('exit_status') { should eq 1 }
  end
  describe command("cmd /c #{path}\\..\\tests\\stderr_2.bat") do
    its('stdout') { should eq '' }
    its('stderr') { should eq "Test stderr_2\r\n" }
    its('exit_status') { should eq 2 }
  end
end
