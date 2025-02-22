#!/bin/bash  
export UUID=${UUID:-'bc97f674-c578-4940-9234-0a1da46041b9'}   # 节点UUID
export NEZHA_SERVER=${NEZHA_SERVER:-'nz.abc.cn'}       # 哪吒客户端域名或ip,哪吒3个变量不全不运行
export NEZHA_PORT=${NEZHA_PORT:-'5555'}                # 哪吒端口为{443,8443,2053,2083,2087,2096}其中之一时自动开启tls
export NEZHA_KEY=${NEZHA_KEY:-''}                      # 哪吒客户端密钥
export ARGO_DOMAIN=${ARGO_DOMAIN:-''}                  # 固定隧道域名,留空即启用临时隧道
export ARGO_AUTH=${ARGO_AUTH:-''}                      # 固定隧道token或json,留空即启用临时隧道
export CFIP=${CFIP:-'www.visa.com.tw'}                 # argo节点优选域名或优选ip
export CFPORT=${CFPORT:-'443'}                         # argo节点端口 
export NAME=${NAME:-'Vls'}                             # 节点名称  
export FILE_PATH=${FILE_PATH:-'./.cache'}              # sub 路径  
export ARGO_PORT=${ARGO_PORT:-'8001'}                  # argo端口 使用固定隧道token,cloudflare后台设置的端口和这里对应
export TUIC_PORT=${TUIC_PORT:-'40000'}                 # Tuic 端口，支持多端口玩具可填写，否则不动
export HY2_PORT=${HY2_PORT:-'50000'}                   # Hy2 端口，支持多端口玩具可填写，否则不动
export REALITY_PORT=${REALITY_PORT:-'60000'}           # reality 端口,支持多端口玩具可填写，否则不动   
export TELEGRAM_CHAT_ID=${TELEGRAM_CHAT_ID:-''}        # Telegram chat_id  两个变量不全不推送节点到TG
export TELEGRAM_BOT_TOKEN=${TELEGRAM_BOT_TOKEN:-''}    # Telegram bot_token
export SUB_URL=${SUB_URL:-''}    # 节点自动上传地址,没有可不填,需要填用 https://github.com/eooce/Merge-sub 部署后的首页地址

echo "WyAhIC1kICIke0ZJTEVfUEFUSH0iIF0gJiYgbWtkaXIgLXAgIiR7RklMRV9QQVRIfSIgJiYgcm0gLXJmIGJvb3QubG9nIGNvbmZpZy5qc29uIHR1bm5lbC5qc29uIHR1bm5lbC55bWwgIiR7RklMRV9QQVRIfS9zdWIudHh0IiA+L2Rldi9udWxsIDI+JjEKCmFyZ29fY29uZmlndXJlKCkgewogIGlmIFtbIC16ICRBUkdPX0FVVEggfHwgLXogJEFSR09fRE9NQUlOIF1dOyB0aGVuCiAgICBlY2hvIC1lICJcZVsxOzMybUFSR09fRE9NQUlOIG9yIEFSR09fQVVUSCB2YXJpYWJsZSBpcyBlbXB0eSwgdXNlIHF1aWNrIHR1bm5lbHNcZVswbSIgICAKICAgIHJldHVybgogIGZpCgogIGlmIFtbICRBUkdPX0FVVEggPX4gVHVubmVsU2VjcmV0IF1dOyB0aGVuCiAgICBlY2hvICRBUkdPX0FVVEggPiB0dW5uZWwuanNvbgogICAgY2F0ID4gdHVubmVsLnltbCA8PCBFT0YKdHVubmVsOiAkKGN1dCAtZFwiIC1mMTIgPDw8ICIkQVJHT19BVVRIIikKY3JlZGVudGlhbHMtZmlsZTogdHVubmVsLmpzb24KcHJvdG9jb2w6IGh0dHAyCgppbmdyZXNzOgogIC0gaG9zdG5hbWU6ICRBUkdPX0RPTUFJTgogICAgc2VydmljZTogaHR0cDovL2xvY2FsaG9zdDokQVJHT19QT1JUCiAgICBvcmlnaW5SZXF1ZXN0OgogICAgICBub1RMU1ZlcmlmeTogdHJ1ZQogIC0gc2VydmljZTogaHR0cF9zdGF0dXM6NDA0CkVPRgogIGVsc2UKICAgIGVjaG8gLWUgIlxlWzE7MzJtQVJHT19BVVRIIG1pc21hdGNoIFR1bm5lbFNlY3JldCx1c2UgdG9rZW4gY29ubmVjdCB0byB0dW5uZWxcZVswbSIKICBmaQp9CmFyZ29fY29uZmlndXJlCndhaXQKCmRvd25sb2FkX2FuZF9ydW4oKSB7CkFSQ0g9JCh1bmFtZSAtbSkgJiYgRE9XTkxPQURfRElSPSIuIiAmJiBta2RpciAtcCAiJERPV05MT0FEX0RJUiIgJiYgRklMRV9JTkZPPSgpCmlmIFsgIiRBUkNIIiA9PSAiYXJtIiBdIHx8IFsgIiRBUkNIIiA9PSAiYXJtNjQiIF0gfHwgWyAiJEFSQ0giID09ICJhYXJjaDY0IiBdOyB0aGVuCiAgICBGSUxFX0lORk89KCJodHRwczovL2FybTY0LnNzc3MubnljLm1uL3NiIHdlYiIgImh0dHBzOi8vYXJtNjQuc3Nzcy5ueWMubW4vYm90IGJvdCIgImh0dHBzOi8vYXJtNjQuc3Nzcy5ueWMubW4vYWdlbnQgbnBtIikKZWxpZiBbICIkQVJDSCIgPT0gImFtZDY0IiBdIHx8IFsgIiRBUkNIIiA9PSAieDg2XzY0IiBdIHx8IFsgIiRBUkNIIiA9PSAieDg2IiBdOyB0aGVuCiAgICBGSUxFX0lORk89KCJodHRwczovL2FtZDY0LnNzc3MubnljLm1uL3NiIHdlYiIgImh0dHBzOi8vYW1kNjQuc3Nzcy5ueWMubW4vMmdvIGJvdCIgImh0dHBzOi8vYW1kNjQuc3Nzcy5ueWMubW4vYWdlbnQgbnBtIikKZWxzZQogICAgZWNobyAiVW5zdXBwb3J0ZWQgYXJjaGl0ZWN0dXJlOiAkQVJDSCIKICAgIGV4aXQgMQpmaQpkZWNsYXJlIC1BIEZJTEVfTUFQCmdlbmVyYXRlX3JhbmRvbV9uYW1lKCkgewogICAgbG9jYWwgY2hhcnM9YWJjZGVmZ2hpamtsbW5vcHFyc3R1dnd4eXoxMjM0NTY3ODkwCiAgICBsb2NhbCBuYW1lPSIiCiAgICBmb3IgaSBpbiB7MS4uNn07IGRvCiAgICAgICAgbmFtZT0iJG5hbWUke2NoYXJzOlJBTkRPTSUkeyNjaGFyc306MX0iCiAgICBkb25lCiAgICBlY2hvICIkbmFtZSIKfQpkb3dubG9hZF9maWxlKCkgewogICAgbG9jYWwgVVJMPSQxCiAgICBsb2NhbCBORVdfRklMRU5BTUU9JDIKICAgIAogICAgaWYgY29tbWFuZCAtdiBjdXJsID4vZGV2L251bGwgMj4mMTsgdGhlbgogICAgICAgIGN1cmwgLUwgLXNTIC1vICIkTkVXX0ZJTEVOQU1FIiAiJFVSTCIKICAgICAgICBlY2hvIC1lICJcZVsxOzMybURvd25sb2FkZWQgJE5FV19GSUxFTkFNRSBieSBjdXJsXGVbMG0iCiAgICBlbGlmIGNvbW1hbmQgLXYgd2dldCA+L2Rldi9udWxsIDI+JjE7IHRoZW4KICAgICAgICB3Z2V0IC1xIC1PICIkTkVXX0ZJTEVOQU1FIiAiJFVSTCIKICAgICAgICBlY2hvIC1lICJcZVsxOzMybURvd25sb2FkZWQgJE5FV19GSUxFTkFNRSBieSB3Z2V0XGVbMG0iCiAgICBlbHNlCiAgICAgICAgZWNobyAtZSAiXGVbMTszM21OZWl0aGVyIGN1cmwgbm9yIHdnZXQgaXMgYXZhaWxhYmxlIGZvciBkb3dubG9hZGluZ1xlWzBtIgogICAgICAgIGV4aXQgMQogICAgZmkKfQpmb3IgZW50cnkgaW4gIiR7RklMRV9JTkZPW0BdfSI7IGRvCiAgICBVUkw9JChlY2hvICIkZW50cnkiIHwgY3V0IC1kICcgJyAtZiAxKQogICAgUkFORE9NX05BTUU9JChnZW5lcmF0ZV9yYW5kb21fbmFtZSkKICAgIE5FV19GSUxFTkFNRT0iJERPV05MT0FEX0RJUi8kUkFORE9NX05BTUUiCiAgICAKICAgIGRvd25sb2FkX2ZpbGUgIiRVUkwiICIkTkVXX0ZJTEVOQU1FIgogICAgCiAgICBjaG1vZCAreCAiJE5FV19GSUxFTkFNRSIKICAgIEZJTEVfTUFQWyQoZWNobyAiJGVudHJ5IiB8IGN1dCAtZCAnICcgLWYgMildPSIkTkVXX0ZJTEVOQU1FIgpkb25lCndhaXQKCm91dHB1dD0kKC4vIiQoYmFzZW5hbWUgJHtGSUxFX01BUFt3ZWJdfSkiIGdlbmVyYXRlIHJlYWxpdHkta2V5cGFpcikKcHJpdmF0ZV9rZXk9JChlY2hvICIke291dHB1dH0iIHwgYXdrICcvUHJpdmF0ZUtleTovIHtwcmludCAkMn0nKQpwdWJsaWNfa2V5PSQoZWNobyAiJHtvdXRwdXR9IiB8IGF3ayAnL1B1YmxpY0tleTovIHtwcmludCAkMn0nKQoKb3BlbnNzbCBlY3BhcmFtIC1nZW5rZXkgLW5hbWUgcHJpbWUyNTZ2MSAtb3V0ICJwcml2YXRlLmtleSIKb3BlbnNzbCByZXEgLW5ldyAteDUwOSAtZGF5cyAzNjUwIC1rZXkgInByaXZhdGUua2V5IiAtb3V0ICJjZXJ0LnBlbSIgLXN1YmogIi9DTj1iaW5nLmNvbSIKCiAgY2F0ID4gY29uZmlnLmpzb24gPDwgRU9GCnsKICAgICJsb2ciOiB7CiAgICAgICAgImRpc2FibGVkIjogZmFsc2UsCiAgICAgICAgImxldmVsIjogImluZm8iLAogICAgICAgICJ0aW1lc3RhbXAiOiB0cnVlCiAgICB9LAogICAgImRucyI6IHsKICAgICAgICAic2VydmVycyI6IFsKICAgICAgICB7CiAgICAgICAgICAgICJ0YWciOiAiZ29vZ2xlIiwKICAgICAgICAgICAgImFkZHJlc3MiOiAidGxzOi8vOC44LjguOCIKICAgICAgICB9CiAgICAgICAgXQogICAgfSwKICAgICJpbmJvdW5kcyI6IFsKICAgIHsKICAgICAgInRhZyI6ICJ2bWVzcy13cy1pbiIsCiAgICAgICJ0eXBlIjogInZtZXNzIiwKICAgICAgImxpc3RlbiI6ICI6OiIsCiAgICAgICJsaXN0ZW5fcG9ydCI6ICR7QVJHT19QT1JUfSwKICAgICAgICAidXNlcnMiOiBbCiAgICAgICAgewogICAgICAgICAgInV1aWQiOiAiJHtVVUlEfSIKICAgICAgICB9CiAgICAgIF0sCiAgICAgICJ0cmFuc3BvcnQiOiB7CiAgICAgICAgInR5cGUiOiAid3MiLAogICAgICAgICJwYXRoIjogIi92bWVzcy1hcmdvIiwKICAgICAgICAiZWFybHlfZGF0YV9oZWFkZXJfbmFtZSI6ICJTZWMtV2ViU29ja2V0LVByb3RvY29sIgogICAgICB9CiAgICB9LAoKICAgIHsKICAgICAgInRhZyI6ICJ0dWljLWluIiwKICAgICAgInR5cGUiOiAidHVpYyIsCiAgICAgICJsaXN0ZW4iOiAiOjoiLAogICAgICAibGlzdGVuX3BvcnQiOiAke1RVSUNfUE9SVH0sCiAgICAgICJ1c2VycyI6IFsKICAgICAgICB7CiAgICAgICAgICAidXVpZCI6ICIke1VVSUR9IiwKICAgICAgICAgICJwYXNzd29yZCI6ICJhZG1pbiIKICAgICAgICB9CiAgICAgIF0sCiAgICAgICJjb25nZXN0aW9uX2NvbnRyb2wiOiAiYmJyIiwKICAgICAgInRscyI6IHsKICAgICAgICAiZW5hYmxlZCI6IHRydWUsCiAgICAgICAgImFscG4iOiBbCiAgICAgICAgICAiaDMiCiAgICAgICAgXSwKICAgICAgICAiY2VydGlmaWNhdGVfcGF0aCI6ICJjZXJ0LnBlbSIsCiAgICAgICAgImtleV9wYXRoIjogInByaXZhdGUua2V5IgogICAgICB9CiAgICB9LAoKICAgIHsKICAgICAgInRhZyI6ICJoeXN0ZXJpYTItaW4iLAogICAgICAidHlwZSI6ICJoeXN0ZXJpYTIiLAogICAgICAibGlzdGVuIjogIjo6IiwKICAgICAgImxpc3Rlbl9wb3J0IjogJHtIWTJfUE9SVH0sCiAgICAgICAgInVzZXJzIjogWwogICAgICAgICAgewogICAgICAgICAgICAgInBhc3N3b3JkIjogIiR7VVVJRH0iCiAgICAgICAgICB9CiAgICAgIF0sCiAgICAgICJtYXNxdWVyYWRlIjogImh0dHBzOi8vYmluZy5jb20iLAogICAgICAgICJ0bHMiOiB7CiAgICAgICAgICAgICJlbmFibGVkIjogdHJ1ZSwKICAgICAgICAgICAgImFscG4iOiBbCiAgICAgICAgICAgICAgICAiaDMiCiAgICAgICAgICAgIF0sCiAgICAgICAgICAgICJjZXJ0aWZpY2F0ZV9wYXRoIjogImNlcnQucGVtIiwKICAgICAgICAgICAgImtleV9wYXRoIjogInByaXZhdGUua2V5IgogICAgICAgICAgfQogICAgICB9LAoKICAgICAgewogICAgICAgICJ0YWciOiAidmxlc3MtcmVhbGl0eS12ZXNpb24iLAogICAgICAgICJ0eXBlIjogInZsZXNzIiwKICAgICAgICAibGlzdGVuIjogIjo6IiwKICAgICAgICAibGlzdGVuX3BvcnQiOiAkUkVBTElUWV9QT1JULAogICAgICAgICAgInVzZXJzIjogWwogICAgICAgICAgICAgIHsKICAgICAgICAgICAgICAgICJ1dWlkIjogIiRVVUlEIiwKICAgICAgICAgICAgICAgICJmbG93IjogInh0bHMtcnByeC12aXNpb24iCiAgICAgICAgICAgICAgfQogICAgICAgICAgXSwKICAgICAgICAgICJ0bHMiOiB7CiAgICAgICAgICAgICAgImVuYWJsZWQiOiB0cnVlLAogICAgICAgICAgICAgICJzZXJ2ZXJfbmFtZSI6ICJ3d3cubmF6aHVtaS5jb20iLAogICAgICAgICAgICAgICJyZWFsaXR5IjogewogICAgICAgICAgICAgICAgICAiZW5hYmxlZCI6IHRydWUsCiAgICAgICAgICAgICAgICAgICJoYW5kc2hha2UiOiB7CiAgICAgICAgICAgICAgICAgICAgICAic2VydmVyIjogInd3dy5uYXpodW1pLmNvbSIsCiAgICAgICAgICAgICAgICAgICAgICAic2VydmVyX3BvcnQiOiA0NDMKICAgICAgICAgICAgICAgICAgfSwKICAgICAgICAgICAgICAgICAgInByaXZhdGVfa2V5IjogIiRwcml2YXRlX2tleSIsCiAgICAgICAgICAgICAgICAgICJzaG9ydF9pZCI6IFsKICAgICAgICAgICAgICAgICAgICAiIgogICAgICAgICAgICAgICAgICBdCiAgICAgICAgICAgICAgfQogICAgICAgICAgfQogICAgICB9CiAgIF0sCiAgICAib3V0Ym91bmRzIjogWwogICAgewogICAgICAidHlwZSI6ICJkaXJlY3QiLAogICAgICAidGFnIjogImRpcmVjdCIKICAgIH0sCiAgICB7CiAgICAgICJ0eXBlIjogImRpcmVjdCIsCiAgICAgICJ0YWciOiAiZGlyZWN0LWlwdjQtcHJlZmVyLW91dCIsCiAgICAgICJkb21haW5fc3RyYXRlZ3kiOiAicHJlZmVyX2lwdjQiCiAgICB9LAogICAgewogICAgICAidHlwZSI6ICJkaXJlY3QiLAogICAgICAidGFnIjogImRpcmVjdC1pcHY0LW9ubHktb3V0IiwKICAgICAgImRvbWFpbl9zdHJhdGVneSI6ICJpcHY0X29ubHkiCiAgICB9LAogICAgewogICAgICAidHlwZSI6ICJkaXJlY3QiLAogICAgICAidGFnIjogImRpcmVjdC1pcHY2LXByZWZlci1vdXQiLAogICAgICAiZG9tYWluX3N0cmF0ZWd5IjogInByZWZlcl9pcHY2IgogICAgfSwKICAgIHsKICAgICAgInR5cGUiOiAiZGlyZWN0IiwKICAgICAgInRhZyI6ICJkaXJlY3QtaXB2Ni1vbmx5LW91dCIsCiAgICAgICJkb21haW5fc3RyYXRlZ3kiOiAiaXB2Nl9vbmx5IgogICAgfSwKICAgIHsKICAgICAgInR5cGUiOiAid2lyZWd1YXJkIiwKICAgICAgInRhZyI6ICJ3aXJlZ3VhcmQtb3V0IiwKICAgICAgInNlcnZlciI6ICJlbmdhZ2UuY2xvdWRmbGFyZWNsaWVudC5jb20iLAogICAgICAic2VydmVyX3BvcnQiOiAyNDA4LAogICAgICAibG9jYWxfYWRkcmVzcyI6IFsKICAgICAgICAiMTcyLjE2LjAuMi8zMiIsCiAgICAgICAgIjI2MDY6NDcwMDoxMTA6ODEyYTo0OTI5OjdkMmE6YWY2MjozNTFjLzEyOCIKICAgICAgXSwKICAgICAgInByaXZhdGVfa2V5IjogImdCdGhSamV2SERHeVYwS3ZZd1lFNTJOSVB5MjlzU3JWcjZyY1F0WU5jWEE9IiwKICAgICAgInBlZXJfcHVibGljX2tleSI6ICJibVhPQytGMUZ4RU1GOWR5aUsySDUvMVNVdHpIMEp1Vm81MWgyd1BmZ3lvPSIsCiAgICAgICJyZXNlcnZlZCI6IFsKICAgICAgICA2LAogICAgICAgIDE0NiwKICAgICAgICA2CiAgICAgIF0KICAgIH0sCiAgICB7CiAgICAgICJ0eXBlIjogImRpcmVjdCIsCiAgICAgICJ0YWciOiAid2lyZWd1YXJkLWlwdjQtcHJlZmVyLW91dCIsCiAgICAgICJkZXRvdXIiOiAid2lyZWd1YXJkLW91dCIsCiAgICAgICJkb21haW5fc3RyYXRlZ3kiOiAicHJlZmVyX2lwdjQiCiAgICB9LAogICAgewogICAgICAidHlwZSI6ICJkaXJlY3QiLAogICAgICAidGFnIjogIndpcmVndWFyZC1pcHY0LW9ubHktb3V0IiwKICAgICAgImRldG91ciI6ICJ3aXJlZ3VhcmQtb3V0IiwKICAgICAgImRvbWFpbl9zdHJhdGVneSI6ICJpcHY0X29ubHkiCiAgICB9LAogICAgewogICAgICAidHlwZSI6ICJkaXJlY3QiLAogICAgICAidGFnIjogIndpcmVndWFyZC1pcHY2LXByZWZlci1vdXQiLAogICAgICAiZGV0b3VyIjogIndpcmVndWFyZC1vdXQiLAogICAgICAiZG9tYWluX3N0cmF0ZWd5IjogInByZWZlcl9pcHY2IgogICAgfSwKICAgIHsKICAgICAgInR5cGUiOiAiZGlyZWN0IiwKICAgICAgInRhZyI6ICJ3aXJlZ3VhcmQtaXB2Ni1vbmx5LW91dCIsCiAgICAgICJkZXRvdXIiOiAid2lyZWd1YXJkLW91dCIsCiAgICAgICJkb21haW5fc3RyYXRlZ3kiOiAiaXB2Nl9vbmx5IgogICAgfQogIF0sCiAgInJvdXRlIjogewogICAgInJ1bGVfc2V0IjogWwogICAgICB7CiAgICAgICAgInRhZyI6ICJnZW9zaXRlLW5ldGZsaXgiLAogICAgICAgICJ0eXBlIjogInJlbW90ZSIsCiAgICAgICAgImZvcm1hdCI6ICJiaW5hcnkiLAogICAgICAgICJ1cmwiOiAiaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL1NhZ2VyTmV0L3NpbmctZ2Vvc2l0ZS9ydWxlLXNldC9nZW9zaXRlLW5ldGZsaXguc3JzIiwKICAgICAgICAidXBkYXRlX2ludGVydmFsIjogIjFkIgogICAgICB9LAogICAgICB7CiAgICAgICAgInRhZyI6ICJnZW9zaXRlLW9wZW5haSIsCiAgICAgICAgInR5cGUiOiAicmVtb3RlIiwKICAgICAgICAiZm9ybWF0IjogImJpbmFyeSIsCiAgICAgICAgInVybCI6ICJodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vTWV0YUN1YmVYL21ldGEtcnVsZXMtZGF0L3NpbmcvZ2VvL2dlb3NpdGUvb3BlbmFpLnNycyIsCiAgICAgICAgInVwZGF0ZV9pbnRlcnZhbCI6ICIxZCIKICAgICAgfQogICAgXSwKICAgICJydWxlcyI6IFsKICAgICAgewogICAgICAgICJydWxlX3NldCI6IFsKICAgICAgICAgICJnZW9zaXRlLW5ldGZsaXgiCiAgICAgICAgXSwKICAgICAgICAib3V0Ym91bmQiOiAid2lyZWd1YXJkLWlwdjYtb25seS1vdXQiCiAgICAgIH0sCiAgICAgIHsKICAgICAgICAiZG9tYWluIjogWwogICAgICAgICAgImFwaS5zdGF0c2lnLmNvbSIsCiAgICAgICAgICAiYnJvd3Nlci1pbnRha2UtZGF0YWRvZ2hxLmNvbSIsCiAgICAgICAgICAiY2RuLm9wZW5haS5jb20iLAogICAgICAgICAgImNoYXQub3BlbmFpLmNvbSIsCiAgICAgICAgICAiYXV0aC5vcGVuYWkuY29tIiwKICAgICAgICAgICJjaGF0Lm9wZW5haS5jb20uY2RuLmNsb3VkZmxhcmUubmV0IiwKICAgICAgICAgICJpb3MuY2hhdC5vcGVuYWkuY29tIiwKICAgICAgICAgICJvMzMyNDkuaW5nZXN0LnNlbnRyeS5pbyIsCiAgICAgICAgICAib3BlbmFpLWFwaS5hcmtvc2VsYWJzLmNvbSIsCiAgICAgICAgICAib3BlbmFpY29tLWFwaS1iZGNwZjhjNmQyZTlhdGY2LnowMS5henVyZWZkLm5ldCIsCiAgICAgICAgICAib3BlbmFpY29tcHJvZHVjdGlvbmFlNGIuYmxvYi5jb3JlLndpbmRvd3MubmV0IiwKICAgICAgICAgICJwcm9kdWN0aW9uLW9wZW5haWNvbS1zdG9yYWdlLmF6dXJlZWRnZS5uZXQiLAogICAgICAgICAgInN0YXRpYy5jbG91ZGZsYXJlaW5zaWdodHMuY29tIgogICAgICAgIF0sCiAgICAgICAgImRvbWFpbl9zdWZmaXgiOiBbCiAgICAgICAgICAiLmFsZ29saWEubmV0IiwKICAgICAgICAgICIuYXV0aDAuY29tIiwKICAgICAgICAgICIuY2hhdGdwdC5jb20iLAogICAgICAgICAgIi5jaGFsbGVuZ2VzLmNsb3VkZmxhcmUuY29tIiwKICAgICAgICAgICIuY2xpZW50LWFwaS5hcmtvc2VsYWJzLmNvbSIsCiAgICAgICAgICAiLmV2ZW50cy5zdGF0c2lnYXBpLm5ldCIsCiAgICAgICAgICAiLmZlYXR1cmVnYXRlcy5vcmciLAogICAgICAgICAgIi5pZGVudHJ1c3QuY29tIiwKICAgICAgICAgICIuaW50ZXJjb20uaW8iLAogICAgICAgICAgIi5pbnRlcmNvbWNkbi5jb20iLAogICAgICAgICAgIi5sYXVuY2hkYXJrbHkuY29tIiwKICAgICAgICAgICIub2Fpc3RhdGljLmNvbSIsCiAgICAgICAgICAiLm9haXVzZXJjb250ZW50LmNvbSIsCiAgICAgICAgICAiLm9ic2VydmVpdC5uZXQiLAogICAgICAgICAgIi5vcGVuYWkuY29tIiwKICAgICAgICAgICIub3BlbmFpYXBpLXNpdGUuYXp1cmVlZGdlLm5ldCIsCiAgICAgICAgICAiLm9wZW5haWNvbS5pbWdpeC5uZXQiLAogICAgICAgICAgIi5zZWdtZW50LmlvIiwKICAgICAgICAgICIuc2VudHJ5LmlvIiwKICAgICAgICAgICIuc3RyaXBlLmNvbSIKICAgICAgICBdLAogICAgICAgICJkb21haW5fa2V5d29yZCI6IFsKICAgICAgICAgICJvcGVuYWljb20tYXBpIgogICAgICAgIF0sCiAgICAgICAgIm91dGJvdW5kIjogIndpcmVndWFyZC1pcHY2LXByZWZlci1vdXQiCiAgICAgIH0KICAgIF0sCiAgICAiZmluYWwiOiAiZGlyZWN0IgogICB9LAogICAiZXhwZXJpbWVudGFsIjogewogICAgICAiY2FjaGVfZmlsZSI6IHsKICAgICAgInBhdGgiOiAiY2FjaGUuZGIiLAogICAgICAiY2FjaGVfaWQiOiAibXljYWNoZWlkIiwKICAgICAgInN0b3JlX2Zha2VpcCI6IHRydWUKICAgIH0KICB9Cn0KRU9GCgppZiBbIC1lICIkKGJhc2VuYW1lICR7RklMRV9NQVBbd2ViXX0pIiBdOyB0aGVuCiAgICBub2h1cCAuLyIkKGJhc2VuYW1lICR7RklMRV9NQVBbd2ViXX0pIiBydW4gLWMgY29uZmlnLmpzb24gPi9kZXYvbnVsbCAyPiYxICYKICAgIHNsZWVwIDIKICAgIGVjaG8gLWUgIlxlWzE7MzJtJChiYXNlbmFtZSAke0ZJTEVfTUFQW3dlYl19KSBpcyBydW5uaW5nXGVbMG0iCmZpCgppZiBbIC1lICIkKGJhc2VuYW1lICR7RklMRV9NQVBbYm90XX0pIiBdOyB0aGVuCiAgICBpZiBbWyAkQVJHT19BVVRIID1+IF5bQS1aMC05YS16PV17MTIwLDI1MH0kIF1dOyB0aGVuCiAgICAgIGFyZ3M9InR1bm5lbCAtLWVkZ2UtaXAtdmVyc2lvbiBhdXRvIC0tbm8tYXV0b3VwZGF0ZSAtLXByb3RvY29sIGh0dHAyIHJ1biAtLXRva2VuICR7QVJHT19BVVRIfSIKICAgIGVsaWYgW1sgJEFSR09fQVVUSCA9fiBUdW5uZWxTZWNyZXQgXV07IHRoZW4KICAgICAgYXJncz0idHVubmVsIC0tZWRnZS1pcC12ZXJzaW9uIGF1dG8gLS1jb25maWcgdHVubmVsLnltbCBydW4iCiAgICBlbHNlCiAgICAgIGFyZ3M9InR1bm5lbCAtLWVkZ2UtaXAtdmVyc2lvbiBhdXRvIC0tbm8tYXV0b3VwZGF0ZSAtLXByb3RvY29sIGh0dHAyIC0tbG9nZmlsZSBib290LmxvZyAtLWxvZ2xldmVsIGluZm8gLS11cmwgaHR0cDovL2xvY2FsaG9zdDokQVJHT19QT1JUIgogICAgZmkKICAgIG5vaHVwIC4vIiQoYmFzZW5hbWUgJHtGSUxFX01BUFtib3RdfSkiICRhcmdzID4vZGV2L251bGwgMj4mMSAmCiAgICBzbGVlcCAyCiAgICBlY2hvIC1lICJcZVsxOzMybSQoYmFzZW5hbWUgJHtGSUxFX01BUFtib3RdfSkgaXMgcnVubmluZ1xlWzBtIiAKZmkKCmlmIFsgLWUgIiQoYmFzZW5hbWUgJHtGSUxFX01BUFtucG1dfSkiIF07IHRoZW4KICAgIHRsc1BvcnRzPSgiNDQzIiAiODQ0MyIgIjIwOTYiICIyMDg3IiAiMjA4MyIgIjIwNTMiKQogICAgaWYgW1sgIiR7dGxzUG9ydHNbKl19IiA9fiAiJHtORVpIQV9QT1JUfSIgXV07IHRoZW4KICAgICAgTkVaSEFfVExTPSItLXRscyIKICAgIGVsc2UKICAgICAgTkVaSEFfVExTPSIiCiAgICBmaQogICAgaWYgWyAtbiAiJE5FWkhBX1NFUlZFUiIgXSAmJiBbIC1uICIkTkVaSEFfUE9SVCIgXSAmJiBbIC1uICIkTkVaSEFfS0VZIiBdOyB0aGVuCiAgICAgICAgZXhwb3J0IFRNUERJUj0kKHB3ZCkKICAgICAgICBub2h1cCAuLyIkKGJhc2VuYW1lICR7RklMRV9NQVBbbnBtXX0pIiAtcyAke05FWkhBX1NFUlZFUn06JHtORVpIQV9QT1JUfSAtcCAke05FWkhBX0tFWX0gJHtORVpIQV9UTFN9ID4vZGV2L251bGwgMj4mMSAmCiAgICAgICAgc2xlZXAgMgogICAgICAgIGVjaG8gLWUgIlxlWzE7MzJtJChiYXNlbmFtZSAke0ZJTEVfTUFQW25wbV19KSBpcyBydW5uaW5nXGVbMG0iCiAgICBlbHNlICAgIAogICAgICAgIGVjaG8gLWUgIlxlWzE7MzVtTkVaSEEgdmFyaWFibGUgaXMgZW1wdHksIHNraXBwaW5nIHJ1bm5pbmdcZVswbSIKICAgIGZpCmZpCgpybSAtZiAiJChiYXNlbmFtZSAke0ZJTEVfTUFQW25wbV19KSIgIiQoYmFzZW5hbWUgJHtGSUxFX01BUFt3ZWJdfSkiICIkKGJhc2VuYW1lICR7RklMRV9NQVBbYm90XX0pIgp9CmRvd25sb2FkX2FuZF9ydW4KCmdldF9hcmdvZG9tYWluKCkgewogIGlmIFtbIC1uICRBUkdPX0FVVEggXV07IHRoZW4KICAgIGVjaG8gIiRBUkdPX0RPTUFJTiIKICBlbHNlCiAgICBsb2NhbCByZXRyeT0wCiAgICBsb2NhbCBtYXhfcmV0cmllcz02CiAgICBsb2NhbCBhcmdvZG9tYWluPSIiCiAgICB3aGlsZSBbWyAkcmV0cnkgLWx0ICRtYXhfcmV0cmllcyBdXTsgZG8KICAgICAgKChyZXRyeSsrKSkKICAgICAgYXJnb2RvbWFpbj0kKHNlZCAtbiAnc3wuKmh0dHBzOi8vXChbXi9dKnRyeWNsb3VkZmxhcmVcLmNvbVwpLip8XDF8cCcgYm9vdC5sb2cpCiAgICAgIGlmIFtbIC1uICRhcmdvZG9tYWluIF1dOyB0aGVuCiAgICAgICAgYnJlYWsKICAgICAgZmkKICAgICAgc2xlZXAgMQogICAgZG9uZQogICAgZWNobyAiJGFyZ29kb21haW4iCiAgZmkKfQoKc2VuZF90ZWxlZ3JhbSgpIHsKICBpZiBbIC1uICIke1RFTEVHUkFNX0JPVF9UT0tFTn0iIF0gJiYgWyAtbiAiJHtURUxFR1JBTV9DSEFUX0lEfSIgXTsgdGhlbgogICAgTUVTU0FHRT0kKGNhdCAke0ZJTEVfUEFUSH0vc3ViLnR4dCkKICAgIExPQ0FMX01FU1NBR0U9IioqJHtOQU1FfeiKgueCueaOqOmAgemAmuefpSoqXG5cYFxgXGAke01FU1NBR0V9XGBcYFxgIgogICAgY3VybCAtcyAtWCBQT1NUICJodHRwczovL2FwaS50ZWxlZ3JhbS5vcmcvYm90JHtURUxFR1JBTV9CT1RfVE9LRU59L3NlbmRNZXNzYWdlIiAtZCAiY2hhdF9pZD0ke1RFTEVHUkFNX0NIQVRfSUR9JnRleHQ9JHtMT0NBTF9NRVNTQUdFfSZwYXJzZV9tb2RlPU1hcmtkb3duIiA+IC9kZXYvbnVsbAogICAgaWYgWyAkPyAtZXEgMCBdOyB0aGVuCiAgICAgIGVjaG8gLWUgIlxuXGVbMTszMm1UZWxlZ3JhbSBtZXNzYWdlIHNlbnQgc3VjY2Vzc2Z1bGx5XGVbMG0iCiAgICBlbHNlCiAgICAgIGVjaG8gLWUgIlxuXGVbMTszMW1GYWlsZWQgdG8gc2VuZCBUZWxlZ3JhbSBtZXNzYWdlXGVbMG0iCiAgICBmaQogIGVsc2UKICAgIGVjaG8gLWUgIlxuXGVbMTszNW1UZWxlZ3JhbSBib3QgdG9rZW4gb3IgY2hhdCBJRCBpcyBlbXB0eS4gU2tpcCBwdXNoaW5nIG5vZGVzIHRvIFRHXGVbMG0iCiAgZmkKfQoKdXBsb2Rfbm9kZXMoKSB7CiAgICBpZiBbWyAteiAkU1VCX1VSTCBdXTsgdGhlbgogICAgICAgIGVjaG8gLWUgIlwwMzNbMTszMm1Ta2lwcGluZyB1cGxvYWQgbm9kZXM6IFNVQl9VUkwgaXMgbm90IHNldFwwMzNbMG0iCiAgICAgICAgcmV0dXJuCiAgICBmaQoKICAgIGlmIFtbICEgLWYgJHtGSUxFX1BBVEh9L2xpc3QudHh0IF1dOyB0aGVuCiAgICAgICAgZWNobyAtZSAiXDAzM1sxOzMxbUVycm9yOiAke0ZJTEVfUEFUSH0vbGlzdC50eHQgZG9lcyBub3QgZXhpc3RcMDMzWzBtIgogICAgICAgIHJldHVybgogICAgZmkKCiAgICBjb250ZW50PSQoY2F0ICR7RklMRV9QQVRIfS9saXN0LnR4dCkKICAgIG5vZGVzPSQoZWNobyAiJGNvbnRlbnQiIHwgZ3JlcCAtRSAnKHZsZXNzfHZtZXNzfHRyb2phbnxoeXN0ZXJpYTJ8dHVpYyk6Ly8nKQoKICAgIGlmIFtbIC16ICRub2RlcyBdXTsgdGhlbgogICAgICAgIGVjaG8gLWUgIlwwMzNbMTszMm1ObyBub2RlcyBmb3VuZCBpbiAke0ZJTEVfUEFUSH0vbGlzdC50eHRcMDMzWzBtIgogICAgICAgIHJldHVybgogICAgZmkKCiAgICBub2Rlcz0oJG5vZGVzKQoKICAgIGpzb25fZGF0YT0neyJub2RlcyI6IFsnCiAgICBmb3Igbm9kZSBpbiAiJHtub2Rlc1tAXX0iOyBkbwogICAgICAgIGpzb25fZGF0YSs9IlwiJG5vZGVcIiwiCiAgICBkb25lCiAgICBqc29uX2RhdGE9JHtqc29uX2RhdGElLH0KICAgIGpzb25fZGF0YSs9J119JwoKICAgIGN1cmwgLVggUE9TVCAiJFNVQl9VUkwvYXBpL2FkZC1ub2RlcyIgXAogICAgICAgICAtSCAiQ29udGVudC1UeXBlOiBhcHBsaWNhdGlvbi9qc29uIiBcCiAgICAgICAgIC1kICIkanNvbl9kYXRhIiA+IC9kZXYvbnVsbCAyPiYxCgogICAgaWYgW1sgJD8gLWVxIDAgXV07IHRoZW4KICAgICAgICBlY2hvIC1lICJcMDMzWzE7MzJtTm9kZXMgdXBsb2FkZWQgc3VjY2Vzc2Z1bGx5XDAzM1swbSIKICAgIGVsc2UKICAgICAgICBlY2hvIC1lICJcMDMzWzE7MzFtRmFpbGVkIHRvIHVwbG9hZCBub2Rlc1wwMzNbMG0iCiAgICBmaQp9CgphcmdvZG9tYWluPSQoZ2V0X2FyZ29kb21haW4pCmVjaG8gLWUgIlxlWzE7MzJtQXJnb0RvbWFpbjpcZVsxOzM1bSR7YXJnb2RvbWFpbn1cZVswbVxuIgpzbGVlcCAxCklQPSQoY3VybCAtcyAtLW1heC10aW1lIDIgaXB2NC5pcC5zYiB8fCBjdXJsIC1zIC0tbWF4LXRpbWUgMSBhcGkuaXBpZnkub3JnIHx8IHsgaXB2Nj0kKGN1cmwgLXMgLS1tYXgtdGltZSAxIGlwdjYuaXAuc2IpOyBlY2hvICJbJGlwdjZdIjsgfSB8fCBlY2hvICLmnKrog73ojrflj5bliLBJUCIpCklTUD0kKGN1cmwgLXMgLS1tYXgtdGltZSAyIGh0dHBzOi8vc3BlZWQuY2xvdWRmbGFyZS5jb20vbWV0YSB8IGF3ayAtRlwiICd7cHJpbnQgJDI2Ii0iJDE4fScgfCBzZWQgLWUgJ3MvIC9fL2cnIHx8IGVjaG8gIjAuMCIpCgpWTUVTUz0ieyBcInZcIjogXCIyXCIsIFwicHNcIjogXCIke05BTUV9LSR7SVNQfVwiLCBcImFkZFwiOiBcIiR7Q0ZJUH1cIiwgXCJwb3J0XCI6IFwiJHtDRlBPUlR9XCIsIFwiaWRcIjogXCIke1VVSUR9XCIsIFwiYWlkXCI6IFwiMFwiLCBcInNjeVwiOiBcIm5vbmVcIiwgXCJuZXRcIjogXCJ3c1wiLCBcInR5cGVcIjogXCJub25lXCIsIFwiaG9zdFwiOiBcIiR7YXJnb2RvbWFpbn1cIiwgXCJwYXRoXCI6IFwiL3ZtZXNzLWFyZ28/ZWQ9MjA0OFwiLCBcInRsc1wiOiBcInRsc1wiLCBcInNuaVwiOiBcIiR7YXJnb2RvbWFpbn1cIiwgXCJhbHBuXCI6IFwiXCIsIFwiZnBcIjogXCJcIn0iCgpjYXQgPiAke0ZJTEVfUEFUSH0vbGlzdC50eHQgPDxFT0YKdm1lc3M6Ly8kKGVjaG8gIiRWTUVTUyIgfCBiYXNlNjQgLXcwKQpFT0YKCmlmIFsgIiRUVUlDX1BPUlQiICE9ICI0MDAwMCIgXTsgdGhlbgogIGVjaG8gLWUgIlxudHVpYzovLyR7VVVJRH06YWRtaW5AJHtJUH06JHtUVUlDX1BPUlR9P3NuaT13d3cuYmluZy5jb20mYWxwbj1oMyZjb25nZXN0aW9uX2NvbnRyb2w9YmJyIyR7TkFNRX0tJHtJU1B9IiA+PiAke0ZJTEVfUEFUSH0vbGlzdC50eHQKZmkKCmlmIFsgIiRIWTJfUE9SVCIgIT0gIjUwMDAwIiBdOyB0aGVuCiAgZWNobyAtZSAiXG5oeXN0ZXJpYTI6Ly8ke1VVSUR9QCR7SVB9OiR7SFkyX1BPUlR9Lz9zbmk9d3d3LmJpbmcuY29tJmFscG49aDMmaW5zZWN1cmU9MSMke05BTUV9LSR7SVNQfSIgPj4gJHtGSUxFX1BBVEh9L2xpc3QudHh0CmZpCgppZiBbICIkUkVBTElUWV9QT1JUIiAhPSAiNjAwMDAiIF07IHRoZW4KICBlY2hvIC1lICJcbnZsZXNzOi8vJHtVVUlEfUAke0lQfToke1JFQUxJVFlfUE9SVH0/ZW5jcnlwdGlvbj1ub25lJmZsb3c9eHRscy1ycHJ4LXZpc2lvbiZzZWN1cml0eT1yZWFsaXR5JnNuaT13d3cubmF6aHVtaS5jb20mZnA9Y2hyb21lJnBiaz0ke3B1YmxpY19rZXl9JnR5cGU9dGNwJmhlYWRlclR5cGU9bm9uZSMke05BTUV9LSR7SVNQfSIgPj4gJHtGSUxFX1BBVEh9L2xpc3QudHh0CmZpCgpiYXNlNjQgLXcwICR7RklMRV9QQVRIfS9saXN0LnR4dCA+ICR7RklMRV9QQVRIfS9zdWIudHh0CmNhdCAke0ZJTEVfUEFUSH0vc3ViLnR4dAplY2hvIC1lICJcblxlWzE7MzJtJHtGSUxFX1BBVEh9L3N1Yi50eHQgc2F2ZWQgc3VjY2Vzc2Z1bGx5XGVbMG0iCnVwbG9kX25vZGVzCnNlbmRfdGVsZWdyYW0KZWNobyAtZSAiXG5cZVsxOzMybVJ1bm5pbmcgZG9uZSFcZVswbSIKZWNobyAiIgpzbGVlcCAxMCAKY2xlYXIKcm0gLXJmIHdlYiBib3QgbnBtIGJvb3QubG9nIGNvbmZpZy5qc29uIHNiLmxvZyBjb3JlIGZha2VfdXNlcmFnZW50XzAuMi4wLmpzb24gJHtGSUxFX1BBVEh9L2xpc3QudHh0ID4vZGV2L251bGwgMj4mMQ==" | base64 -d | bash
