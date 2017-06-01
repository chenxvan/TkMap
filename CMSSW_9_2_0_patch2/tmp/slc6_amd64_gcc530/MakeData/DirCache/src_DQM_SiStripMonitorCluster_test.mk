ALL_COMMONRULES += src_DQM_SiStripMonitorCluster_test
src_DQM_SiStripMonitorCluster_test_parent := DQM/SiStripMonitorCluster
src_DQM_SiStripMonitorCluster_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_DQM_SiStripMonitorCluster_test,src/DQM/SiStripMonitorCluster/test,TEST))
