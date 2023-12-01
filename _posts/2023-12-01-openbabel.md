---
date: 2023-12-01
title: Performance Test Reports for OpenBabel
categories:
  - reports 
author_staff_member: qin
---

...

# Applications - Openbabel 

[Open Babel](http://openbabel.org/wiki/Main_Page): The Open Source Chemistry Toolbox


{% tabs ob %}


{% tab ob Similarity Search %}

Run a similarity searching job using OpenBabel

```bash
ob sim --dataset chembl30 --smiles c1ccccc1N=O --fingerprint ob_ecfp4_1024 --threshold 0.25
```

## Free version
The free version running on a Mac Mini (M1 2020, 8 GB) takes 3 minutes 12 seconds to finish the job.
<script async id="asciicast-TTFxHXvCOcVKnzWQhIKxhUUv9" src="https://asciinema.org/a/TTFxHXvCOcVKnzWQhIKxhUUv9.js" data-autoplay="true" data-size="big" data-speed="3" data-loop="true" data-startAt="10" data-cols="180" data-rows="15"></script>

## Pro version
The pro version running on a cluster comprised of 80 nodes (1 core, 2 GB) takes 5 seconds to finish the job.
<script async id="asciicast-7bsqQYYisqQqB27noc9NPEgJO" src="https://asciinema.org/a/7bsqQYYisqQqB27noc9NPEgJO.js" data-autoplay="true" data-size="big" data-speed="3" data-loop="false" data-startAt="10" data-cols="180" data-rows="15"></script>
{% endtab %}

{% tab ob Substructure Search %}
Run a substructure searching job using OpenBabel
```bash
ob ss --dataset chembl30 --smarts c1ccccc1N=O
```

## Free version
The free version running on a Mac Mini (M1 2020, 8 GB) takes 2 minutes 22 seconds to finish the job.
<script async id="asciicast-vRbmDtLliaX1Q9qFRtyKRbmQI" src="https://asciinema.org/a/vRbmDtLliaX1Q9qFRtyKRbmQI.js" data-autoplay="true" data-size="big" data-speed="3" data-loop="true" data-startAt="10"></script>

## Pro version
The pro version running on a cluster comprised of 80 nodes (1 core, 2 GB) takes 5 seconds to finish the job.
<script async id="asciicast-dT3YN3pRnP7RM8RCuMH4CSNfX" src="https://asciinema.org/a/dT3YN3pRnP7RM8RCuMH4CSNfX.js" data-autoplay="true" data-size="big" data-speed="3" data-loop="fasle" data-startAt="5"></script>
{% endtab %}



{% endtabs %} <!-- end tabs ob -->


