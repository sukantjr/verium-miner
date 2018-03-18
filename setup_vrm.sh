#"/veriumMiner/cpuminer -n 1048576 -o stratum+tcp://eu.vrm.mining-pool.ovh:3032 -u sukantking.worker1 -p sukant"
set -x \
    && BUILD_DEPS="automake autoconf ca-certificates pkg-config libssl-dev libgmp-dev zlib1g-dev g++ git" \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get --no-install-recommends install -y libcurl4-openssl-dev libjansson-dev $BUILD_DEPS \
    && git clone https://github.com/effectsToCause/veriumMiner \
    && cd veriumMiner \
    && ./build.sh \
    && apt-get -y --auto-remove purge $BUILD_DEPS \
    && rm -fr /var/lib/apt-/lists/* \
    && chmod +x ./../vrmcommand.sh
    && ./../vrmcommand.sh
