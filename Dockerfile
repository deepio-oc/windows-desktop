FROM microsoft/windowsservercore:1709_KB4074588
RUN net user /add Rafael
RUN net user Rafael !QAZ2wsx
RUN net localgroup "Remote Desktop Users" Rafael /add
RUN net localgroup "Administrators" Rafael /add
RUN cmd /k reg add "HKLM\System\CurrentControlSet\Control\Terminal Server" /v TemporaryALiC /t REG_DWORD /d 1
