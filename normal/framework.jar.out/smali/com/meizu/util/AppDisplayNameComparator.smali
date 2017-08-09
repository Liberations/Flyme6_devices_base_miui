.class public Lcom/meizu/util/AppDisplayNameComparator;
.super Ljava/lang/Object;
.source "AppDisplayNameComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private mIsChineseLang:Z

.field private mPM:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 2
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/util/AppDisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    const-string v0, "zh"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/util/AppDisplayNameComparator;->mIsChineseLang:Z

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/util/AppDisplayNameComparator;->mCollator:Ljava/text/Collator;

    iget-object v0, p0, Lcom/meizu/util/AppDisplayNameComparator;->mCollator:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 1
    .param p1, "lhs"    # Landroid/content/pm/ResolveInfo;
    .param p2, "rhs"    # Landroid/content/pm/ResolveInfo;

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/meizu/util/AppDisplayNameComparator;->compareWithName(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/meizu/util/AppDisplayNameComparator;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method

.method public final compareWithName(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 24
    .param p1, "a"    # Landroid/content/pm/ResolveInfo;
    .param p2, "b"    # Landroid/content/pm/ResolveInfo;

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/util/AppDisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    .local v17, "sa":Ljava/lang/CharSequence;
    if-nez v17, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/util/AppDisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    .local v18, "sb":Ljava/lang/CharSequence;
    if-nez v18, :cond_1

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    :cond_1
    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .local v19, "str1":Ljava/lang/String;
    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .local v20, "str2":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v9

    .local v9, "len1":I
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v10

    .local v10, "len2":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/util/AppDisplayNameComparator;->mIsChineseLang:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    if-lez v9, :cond_5

    if-lez v10, :cond_5

    const/4 v6, 0x0

    .local v6, "index":I
    :goto_0
    if-ge v6, v9, :cond_5

    if-lt v6, v10, :cond_2

    const/16 v21, 0x1

    return v21

    :cond_2
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .local v2, "ch1":C
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .local v3, "ch2":C
    if-eq v2, v3, :cond_9

    const/16 v21, 0x80

    move/from16 v0, v21

    if-lt v2, v0, :cond_4

    const/16 v21, 0x80

    move/from16 v0, v21

    if-ge v3, v0, :cond_4

    :cond_3
    const/16 v21, 0x80

    move/from16 v0, v21

    if-ge v2, v0, :cond_8

    const/16 v21, -0x1

    :goto_1
    return v21

    :cond_4
    const/16 v21, 0x80

    move/from16 v0, v21

    if-lt v3, v0, :cond_5

    const/16 v21, 0x80

    move/from16 v0, v21

    if-lt v2, v0, :cond_3

    .end local v2    # "ch1":C
    .end local v3    # "ch2":C
    .end local v6    # "index":I
    :cond_5
    const/4 v7, 0x0

    .local v7, "index1":I
    const/4 v8, 0x0

    .local v8, "index2":I
    const/4 v4, 0x0

    .local v4, "count1":I
    const/4 v5, 0x0

    .local v5, "count2":I
    :goto_2
    if-ge v7, v9, :cond_1c

    if-ge v8, v10, :cond_1c

    move v11, v7

    .local v11, "num1":I
    move v13, v8

    .local v13, "num2":I
    :goto_3
    if-ge v7, v9, :cond_6

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .restart local v2    # "ch1":C
    const/16 v21, 0x30

    move/from16 v0, v21

    if-lt v2, v0, :cond_6

    const/16 v21, 0x39

    move/from16 v0, v21

    if-le v2, v0, :cond_a

    .end local v2    # "ch1":C
    :cond_6
    :goto_4
    if-ge v8, v10, :cond_7

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .restart local v3    # "ch2":C
    const/16 v21, 0x30

    move/from16 v0, v21

    if-lt v3, v0, :cond_7

    const/16 v21, 0x39

    move/from16 v0, v21

    if-le v3, v0, :cond_b

    .end local v3    # "ch2":C
    :cond_7
    sub-int v15, v7, v11

    .local v15, "numlen1":I
    sub-int v16, v8, v13

    .local v16, "numlen2":I
    move/from16 v0, v16

    if-eq v15, v0, :cond_12

    if-lez v15, :cond_11

    if-lez v16, :cond_11

    move v12, v11

    .local v12, "num11":I
    move v14, v13

    .local v14, "num22":I
    :goto_5
    if-ge v12, v7, :cond_c

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x30

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .end local v4    # "count1":I
    .end local v5    # "count2":I
    .end local v7    # "index1":I
    .end local v8    # "index2":I
    .end local v11    # "num1":I
    .end local v12    # "num11":I
    .end local v13    # "num2":I
    .end local v14    # "num22":I
    .end local v15    # "numlen1":I
    .end local v16    # "numlen2":I
    .restart local v2    # "ch1":C
    .restart local v3    # "ch2":C
    .restart local v6    # "index":I
    :cond_8
    const/16 v21, 0x1

    goto :goto_1

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .end local v3    # "ch2":C
    .end local v6    # "index":I
    .restart local v4    # "count1":I
    .restart local v5    # "count2":I
    .restart local v7    # "index1":I
    .restart local v8    # "index2":I
    .restart local v11    # "num1":I
    .restart local v13    # "num2":I
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .end local v2    # "ch1":C
    .restart local v3    # "ch2":C
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .end local v3    # "ch2":C
    .restart local v12    # "num11":I
    .restart local v14    # "num22":I
    .restart local v15    # "numlen1":I
    .restart local v16    # "numlen2":I
    :cond_c
    :goto_6
    if-ge v14, v8, :cond_d

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x30

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_d
    sub-int v21, v7, v12

    sub-int v22, v8, v14

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_e

    sub-int v21, v7, v12

    sub-int v22, v8, v14

    sub-int v21, v21, v22

    return v21

    :cond_e
    :goto_7
    if-ge v12, v7, :cond_10

    if-ge v14, v8, :cond_10

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .restart local v2    # "ch1":C
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .restart local v3    # "ch2":C
    if-ne v2, v3, :cond_f

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_f
    sub-int v21, v2, v3

    return v21

    .end local v2    # "ch1":C
    .end local v3    # "ch2":C
    :cond_10
    sub-int v21, v16, v15

    return v21

    .end local v12    # "num11":I
    .end local v14    # "num22":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/util/AppDisplayNameComparator;->mCollator:Ljava/text/Collator;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    return v21

    :cond_12
    if-lez v15, :cond_14

    :goto_8
    if-ge v11, v7, :cond_14

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .restart local v2    # "ch1":C
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .restart local v3    # "ch2":C
    if-ne v2, v3, :cond_13

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_13
    sub-int v21, v2, v3

    return v21

    .end local v2    # "ch1":C
    .end local v3    # "ch2":C
    :cond_14
    if-ge v7, v9, :cond_15

    if-lt v8, v10, :cond_16

    :cond_15
    sub-int v21, v9, v10

    return v21

    :cond_16
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .restart local v2    # "ch1":C
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .restart local v3    # "ch2":C
    const/16 v21, 0x61

    move/from16 v0, v21

    if-gt v2, v0, :cond_18

    const/16 v21, 0x7a

    move/from16 v0, v21

    if-lt v2, v0, :cond_18

    const/16 v21, 0x41

    move/from16 v0, v21

    if-gt v3, v0, :cond_17

    const/16 v21, 0x5a

    move/from16 v0, v21

    if-lt v3, v0, :cond_17

    add-int/lit8 v21, v3, 0x20

    move/from16 v0, v21

    int-to-char v3, v0

    :cond_17
    if-eq v2, v3, :cond_1b

    sub-int v21, v2, v3

    return v21

    :cond_18
    const/16 v21, 0x41

    move/from16 v0, v21

    if-gt v2, v0, :cond_1a

    const/16 v21, 0x5a

    move/from16 v0, v21

    if-lt v2, v0, :cond_1a

    const/16 v21, 0x61

    move/from16 v0, v21

    if-gt v3, v0, :cond_19

    const/16 v21, 0x7a

    move/from16 v0, v21

    if-lt v3, v0, :cond_19

    add-int/lit8 v21, v3, -0x20

    move/from16 v0, v21

    int-to-char v3, v0

    :cond_19
    if-eq v2, v3, :cond_1b

    sub-int v21, v2, v3

    return v21

    :cond_1a
    if-eq v2, v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/util/AppDisplayNameComparator;->mCollator:Ljava/text/Collator;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    return v21

    :cond_1b
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .end local v2    # "ch1":C
    .end local v3    # "ch2":C
    .end local v11    # "num1":I
    .end local v13    # "num2":I
    .end local v15    # "numlen1":I
    .end local v16    # "numlen2":I
    :cond_1c
    sub-int v21, v9, v10

    return v21
.end method
