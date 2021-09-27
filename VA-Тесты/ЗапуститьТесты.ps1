chcp 65001

executor_j11 -s АвтофичиVA.sbsl -m CreateFeatures "AFParams.json"
executor_j11 -s АвтофичиVA.sbsl -m RunTests "AFParams.json"
executor_j11 -s АвтофичиVA.sbsl -m OpenReport "AFParams.json"
