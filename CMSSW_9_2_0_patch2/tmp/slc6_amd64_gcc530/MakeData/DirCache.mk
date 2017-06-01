ifeq ($(strip $(PyDQMSiStripMonitorCluster)),)
PyDQMSiStripMonitorCluster := self/src/DQM/SiStripMonitorCluster/python
src_DQM_SiStripMonitorCluster_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/DQM/SiStripMonitorCluster/python)
PyDQMSiStripMonitorCluster_files := $(patsubst src/DQM/SiStripMonitorCluster/python/%,%,$(wildcard $(foreach dir,src/DQM/SiStripMonitorCluster/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyDQMSiStripMonitorCluster_LOC_USE := self cmssw 
PyDQMSiStripMonitorCluster_PACKAGE := self/src/DQM/SiStripMonitorCluster/python
ALL_PRODS += PyDQMSiStripMonitorCluster
PyDQMSiStripMonitorCluster_INIT_FUNC        += $$(eval $$(call PythonProduct,PyDQMSiStripMonitorCluster,src/DQM/SiStripMonitorCluster/python,src_DQM_SiStripMonitorCluster_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyDQMSiStripMonitorCluster,src/DQM/SiStripMonitorCluster/python))
endif
ALL_COMMONRULES += src_DQM_SiStripMonitorCluster_python
src_DQM_SiStripMonitorCluster_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DQM_SiStripMonitorCluster_python,src/DQM/SiStripMonitorCluster/python,PYTHON))
ALL_COMMONRULES += src_DQM_SiStripMonitorCluster_test
src_DQM_SiStripMonitorCluster_test_parent := DQM/SiStripMonitorCluster
src_DQM_SiStripMonitorCluster_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DQM_SiStripMonitorCluster_test,src/DQM/SiStripMonitorCluster/test,TEST))
ALL_PACKAGES += DQM/SiStripMonitorCluster
subdirs_src_DQM_SiStripMonitorCluster := src_DQM_SiStripMonitorCluster_doc src_DQM_SiStripMonitorCluster_src src_DQM_SiStripMonitorCluster_interface src_DQM_SiStripMonitorCluster_test src_DQM_SiStripMonitorCluster_python
ALL_SUBSYSTEMS+=DQM
subdirs_src_DQM = src_DQM_SiStripMonitorCluster
