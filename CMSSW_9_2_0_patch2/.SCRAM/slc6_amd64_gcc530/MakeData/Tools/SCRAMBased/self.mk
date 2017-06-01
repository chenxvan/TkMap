ifeq ($(strip $(CalibrationHcalAlCaRecoProducersPlugins)),)
CalibrationHcalAlCaRecoProducersPlugins := self/src/Calibration/HcalAlCaRecoProducers/plugins
CalibrationHcalAlCaRecoProducersPlugins_LOC_USE := self cmssw FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet HLTrigger/HLTcore Calibration/IsolatedParticles DataFormats/EgammaReco DataFormats/JetReco rootphysics
Calibration/HcalAlCaRecoProducers_relbigobj+=CalibrationHcalAlCaRecoProducersPlugins
endif
ifeq ($(strip $(Calibration/HcalAlCaRecoProducers)),)
CalibrationHcalAlCaRecoProducers := self/Calibration/HcalAlCaRecoProducers
Calibration/HcalAlCaRecoProducers := CalibrationHcalAlCaRecoProducers
CalibrationHcalAlCaRecoProducers_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibrationHcalAlCaRecoProducers_EX_USE := $(foreach d, self cmssw CalibFormats/HcalObjects Calibration/IsolatedParticles CommonTools/UtilAlgos CondFormats/DataRecord CondFormats/EcalObjects CondFormats/HcalObjects DataFormats/CaloTowers DataFormats/DetId DataFormats/EcalDetId DataFormats/EcalDigi DataFormats/EcalRecHit DataFormats/EgammaReco DataFormats/FEDRawData DataFormats/HcalCalibObjects DataFormats/HcalDigi DataFormats/HcalIsolatedTrack DataFormats/HcalRecHit DataFormats/JetReco DataFormats/L1GlobalTrigger DataFormats/Luminosity DataFormats/Math DataFormats/METReco DataFormats/MuonReco DataFormats/RecoCandidate Geometry/CaloGeometry Geometry/CaloTopology Geometry/EcalAlgo HLTrigger/HLTcore FWCore/Framework FWCore/ParameterSet FWCore/PluginManager RecoLocalCalo/EcalRecAlgos RecoEcal/EgammaClusterAlgos RecoEcal/EgammaCoreTools RecoLocalCalo/HcalRecAlgos TrackingTools/TrackAssociator TrackPropagation/SteppingHelixPropagator DataFormats/Scalers boost clhep root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += CalibrationHcalAlCaRecoProducers
CalibrationHcalAlCaRecoProducers_CLASS := LIBRARY
Calibration/HcalAlCaRecoProducers_relbigobj+=CalibrationHcalAlCaRecoProducers
endif
ifeq ($(strip $(FWCore/Version)),)
FWCoreVersion := self/FWCore/Version
FWCore/Version := FWCoreVersion
FWCoreVersion_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FWCoreVersion_EX_USE := $(foreach d, self cmssw ,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FWCoreVersion_EX_LIB   := FWCoreVersion
ALL_EXTERNAL_PRODS += FWCoreVersion
FWCoreVersion_CLASS := LIBRARY
FWCore/Version_relbigobj+=FWCoreVersion
endif
