ifeq ($(strip $(DQM/SiStripMonitorCluster)),)
ALL_COMMONRULES += src_DQM_SiStripMonitorCluster_src
src_DQM_SiStripMonitorCluster_src_parent := DQM/SiStripMonitorCluster
src_DQM_SiStripMonitorCluster_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_DQM_SiStripMonitorCluster_src,src/DQM/SiStripMonitorCluster/src,LIBRARY))
DQMSiStripMonitorCluster := self/DQM/SiStripMonitorCluster
DQM/SiStripMonitorCluster := DQMSiStripMonitorCluster
DQMSiStripMonitorCluster_files := $(patsubst src/DQM/SiStripMonitorCluster/src/%,%,$(wildcard $(foreach dir,src/DQM/SiStripMonitorCluster/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
DQMSiStripMonitorCluster_BuildFile    := $(WORKINGDIR)/cache/bf/src/DQM/SiStripMonitorCluster/BuildFile
DQMSiStripMonitorCluster_LOC_USE := self cmssw FWCore/Framework FWCore/PluginManager FWCore/ParameterSet DQMServices/Core CommonTools/TriggerUtils DataFormats/SiStripCluster DataFormats/SiPixelCluster CalibFormats/SiStripObjects CalibTracker/Records DPGAnalysis/SiStripTools DQM/SiStripCommon Geometry/Records Geometry/TrackerGeometryBuilder
DQMSiStripMonitorCluster_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,DQMSiStripMonitorCluster,DQMSiStripMonitorCluster,$(SCRAMSTORENAME_LIB),src/DQM/SiStripMonitorCluster/src))
DQMSiStripMonitorCluster_PACKAGE := self/src/DQM/SiStripMonitorCluster/src
ALL_PRODS += DQMSiStripMonitorCluster
DQMSiStripMonitorCluster_CLASS := LIBRARY
DQM/SiStripMonitorCluster_forbigobj+=DQMSiStripMonitorCluster
DQMSiStripMonitorCluster_INIT_FUNC        += $$(eval $$(call Library,DQMSiStripMonitorCluster,src/DQM/SiStripMonitorCluster/src,src_DQM_SiStripMonitorCluster_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
