.class public Lmiui/util/ResourceMapper;
.super Ljava/lang/Object;
.source "ResourceMapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolveReference(Landroid/content/res/Resources;I)I
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .local v0, "outValue":Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez v1, :cond_0

    .end local p1    # "id":I
    :goto_0
    return p1

    .restart local p1    # "id":I
    :cond_0
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0
.end method
