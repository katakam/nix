{ pkgs, ... }:

{
  boot.kernelPackages = pkgs.linuxPackages_latest;

  boot.kernelParams = [
    "amd_pstate=active"
    "processor.max_cstate=5"
    "idle=nomwait"
    "amdgpu.dc=1"
    "amdgpu.gpu_recovery=1"
    "amdgpu.ppfeaturemask=0xffffffff"
    "amd_iommu=on"
    "iommu=pt"
    "mitigations=off"
  ];

  powerManagement.cpuFreqGovernor = "performance";
}
