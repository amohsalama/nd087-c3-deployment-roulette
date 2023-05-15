# Observability with metrics

1. Deployed metrics server with helm chart and terraform

    Needed to ignore changes to desired size of kubernetes cluster in terraform after cluster autoscaling installation

2. kubectl top pods

    ```bash
    $ kubectl top pods
    NAME                                  CPU(cores)   MEMORY(bytes)   
    bloaty-mcbloatface-6c5b5fc984-26dkz   1m           2Mi             
    bloaty-mcbloatface-6c5b5fc984-4qspn   1m           2Mi             
    bloaty-mcbloatface-6c5b5fc984-4wbd5   1m           2Mi             
    bloaty-mcbloatface-6c5b5fc984-6k5vq   1m           2Mi             
    bloaty-mcbloatface-6c5b5fc984-8tw4l   1m           2Mi             
    bloaty-mcbloatface-6c5b5fc984-8w9cx   1m           2Mi             
    bloaty-mcbloatface-6c5b5fc984-cddxx   1m           2Mi             
    bloaty-mcbloatface-6c5b5fc984-ftxt8   1m           2Mi             
    bloaty-mcbloatface-6c5b5fc984-hjtv5   1m           2Mi             
    bloaty-mcbloatface-6c5b5fc984-jtxfd   1m           2Mi             
    bloaty-mcbloatface-6c5b5fc984-l48hm   1m           2Mi             
    bloaty-mcbloatface-6c5b5fc984-ncrb7   1m           2Mi             
    bloaty-mcbloatface-6c5b5fc984-nddmg   1m           2Mi             
    bloaty-mcbloatface-6c5b5fc984-qpvxg   1m           2Mi             
    bloaty-mcbloatface-6c5b5fc984-smdtb   1m           2Mi             
    bloaty-mcbloatface-6c5b5fc984-ttb5f   1m           2Mi             
    bloaty-mcbloatface-6c5b5fc984-xs4tl   1m           2Mi             
    canary-v1-546bfbf766-8mmh8            0m           2Mi             
    canary-v1-546bfbf766-qgq85            0m           2Mi             
    canary-v1-546bfbf766-sgvjt            0m           2Mi             
    canary-v2-8dc775cd6-4q5mt             0m           2Mi             
    canary-v2-8dc775cd6-mvq5b             0m           2Mi             
    canary-v2-8dc775cd6-nwtrz             0m           2Mi             
    green-568777db7-nzdbt                 1m           2Mi             
    hello-world-6c74b69bb4-fcbjj          1m           19Mi
    ```
3. Deleting hello-world-6c74b69bb4-fcbjj

4. List utilization

    ```bash
    $ kubectl top pods
    NAME                                  CPU(cores)   MEMORY(bytes)   
    bloaty-mcbloatface-6c5b5fc984-26dkz   1m           2Mi             
    bloaty-mcbloatface-6c5b5fc984-4qspn   1m           2Mi             
    bloaty-mcbloatface-6c5b5fc984-4wbd5   1m           2Mi             
    bloaty-mcbloatface-6c5b5fc984-6k5vq   1m           2Mi             
    bloaty-mcbloatface-6c5b5fc984-8tw4l   1m           2Mi             
    bloaty-mcbloatface-6c5b5fc984-8w9cx   1m           2Mi             
    bloaty-mcbloatface-6c5b5fc984-cddxx   1m           2Mi             
    bloaty-mcbloatface-6c5b5fc984-ftxt8   1m           2Mi             
    bloaty-mcbloatface-6c5b5fc984-hjtv5   1m           2Mi             
    bloaty-mcbloatface-6c5b5fc984-jtxfd   1m           2Mi             
    bloaty-mcbloatface-6c5b5fc984-l48hm   1m           2Mi             
    bloaty-mcbloatface-6c5b5fc984-ncrb7   1m           2Mi             
    bloaty-mcbloatface-6c5b5fc984-nddmg   1m           2Mi             
    bloaty-mcbloatface-6c5b5fc984-qpvxg   1m           2Mi             
    bloaty-mcbloatface-6c5b5fc984-smdtb   1m           2Mi             
    bloaty-mcbloatface-6c5b5fc984-ttb5f   1m           2Mi             
    bloaty-mcbloatface-6c5b5fc984-xs4tl   1m           2Mi             
    canary-v1-546bfbf766-8mmh8            0m           2Mi             
    canary-v1-546bfbf766-qgq85            0m           2Mi             
    canary-v1-546bfbf766-sgvjt            0m           2Mi             
    canary-v2-8dc775cd6-4q5mt             0m           2Mi             
    canary-v2-8dc775cd6-mvq5b             0m           2Mi             
    canary-v2-8dc775cd6-nwtrz             0m           2Mi             
    green-568777db7-nzdbt                 1m           2Mi
    ```