DELETE t1 FROM ColorLibrary t1
        INNER JOIN
    ColorLibrary t2
WHERE
    t1.id < t2.id AND t1.name = t2.name AND t1.vendorId = t2.vendorId;