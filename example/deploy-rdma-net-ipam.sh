#!/bin/bash
# Copyright 2020 NVIDIA
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

echo "Deploying Secondary Network with Whereabouts IPAM: \"rdma-net-ipam\" with RDMA resource : \"rdma/hca_shared_devices_a\""
echo "#######################################################################################################################"
kubectl apply -f networking/multus-daemonset.yml
kubectl apply -f networking/whereabouts.cni.cncf.io_ippools.yaml
kubectl apply -f networking/whareabouts-daemonset-install.yaml
kubectl apply -f networking/rdma-net-cr-whereabouts-ipam.yml

