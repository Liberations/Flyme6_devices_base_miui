.class public Lorg/apache/miui/commons/lang3/CharSequenceUtils;
.super Ljava/lang/Object;
.source "CharSequenceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static indexOf(Ljava/lang/CharSequence;II)I
    .locals 3
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I
    .param p2, "start"    # I

    .prologue
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast p0, Ljava/lang/String;

    .end local p0    # "cs":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    .restart local p0    # "cs":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "sz":I
    if-gez p2, :cond_2

    const/4 p2, 0x0

    :cond_2
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .prologue
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static lastIndexOf(Ljava/lang/CharSequence;II)I
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I
    .param p2, "start"    # I

    .prologue
    const/4 v2, -0x1

    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_1

    check-cast p0, Ljava/lang/String;

    .end local p0    # "cs":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    .restart local p0    # "cs":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "sz":I
    if-gez p2, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    if-lt p2, v1, :cond_3

    add-int/lit8 p2, v1, -0x1

    :cond_3
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v3, p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .prologue
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z
    .locals 6
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "ignoreCase"    # Z
    .param p2, "thisStart"    # I
    .param p3, "substring"    # Ljava/lang/CharSequence;
    .param p4, "start"    # I
    .param p5, "length"    # I

    .prologue
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    goto :goto_0
.end method

.method public static subSequence(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0, p1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method static toCharArray(Ljava/lang/CharSequence;)[C
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_1

    check-cast p0, Ljava/lang/String;

    .end local p0    # "cs":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "array":[C
    .local v1, "i":I
    .local v2, "sz":I
    .restart local p0    # "cs":Ljava/lang/CharSequence;
    :cond_0
    return-object v0

    .end local v0    # "array":[C
    .end local v1    # "i":I
    .end local v2    # "sz":I
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .restart local v2    # "sz":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    new-array v0, v3, [C

    .restart local v0    # "array":[C
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
