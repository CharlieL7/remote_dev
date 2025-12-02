# make with all threads
alias makej="make -j$(nproc)"
alias mlAct="source ~/py_envs/ml/bin/activate"

# make ranger exit at current directory
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

alias vpnAMD="sudo openconnect --protocol=gp vpnconnect.amd.com -u charllin"
alias mntBangalore="sudo mount 10.137.72.13:/data /mnt/Bangalore"

alias sshRome6="ssh charllin@rocm-rome-6.amd.com"
alias sshFrame47="ssh charllin@rocm-framework-47.amd.com"
alias sshBanff74-4="ssh charllin@banff-cyxtera-s74-4.ctr.dcgpu"
alias sshBanff-200="ssh charllin@banff-200-c2-1.aus.dcgpu"
alias sshMI250="ssh charllin@10.130.92.169"
alias moshMI250="mosh charllin@10.130.92.169"
alias sshNavi31="ssh charllin@aus-navi3x-04.amd.com"
alias sshNavi4x="ssh charllin@navi4x-hw-28.amd.com"
alias sshBanff-pla="ssh charllin@banff-pla-t24-38.pla.dcgpu"

alias sshSlurmNode="ssh alola1"
alias sshSlurmNode2="ssh alola2"
alias rsyncFromSlurmNode="rsync --info=progress2 --compress --recursive alola1:~/rsync_dir/ ~/rsync_dir/"
alias rsyncToSlurmNode="rsync --info=progress2 --compress --recursive ~/rsync_dir/ alola1:~/rsync_dir/"

BANF200="banff-200-c2-1.aus.dcgpu"
alias rsyncFromBanff="rsync --info=progress2 --compress --recursive charllin@${BANF200}:~/rsync_dir/ ~/rsync_dir/"
alias rsyncToBanff="rsync --info=progress2 --compress --recursive ~/rsync_dir/ charllin@${BANF200}:~/rsync_dir/"

RSYNC_EXCLUDE_OPTS="--exclude={'.hg','.git','build/','debug_docker_build/','docker_build/','.tox','*.deb','*.rpm','.cache/','.ccls-cache/','*.orig','depend/'}"

MI350="asrock-1w300-b11-1.mkm.dcgpu"
alias sshMI350="ssh charllin@${MI350}"
alias rsyncToMI350Server="rsync --compress --info=progress2 --recursive $RSYNC_EXCLUDE_OPTS \
~/local_git/3_AMDMIGraphX charllin@${MI350}:/home/charllin/"
alias rsyncFromMI350Server="rsync --compress --info=progress2 --recursive $RSYNC_EXCLUDE_OPTS \
charllin@${MI350}:/home/charllin/ ~/local_git/3_AMDMIGraphX "

alias mtu1200="sudo ip li set mtu 1200 dev enp67s0"
alias routeVPNDevice="sudo route add -host 10.66.0.2 gw 10.66.0.0"
