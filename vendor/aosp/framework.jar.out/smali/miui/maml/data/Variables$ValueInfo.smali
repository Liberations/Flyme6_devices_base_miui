.class Lmiui/maml/data/Variables$ValueInfo;
.super Ljava/lang/Object;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Variables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    iput p2, p0, Lmiui/maml/data/Variables$ValueInfo;->mVersion:I

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 4

    .prologue
    .local p0, "this":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    const/4 v3, 0x0

    iget-object v2, p0, Lmiui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [D

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    check-cast v2, [D

    move-object v1, v2

    check-cast v1, [D

    .local v1, "value":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_4

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "value":[D
    :cond_0
    iget-object v2, p0, Lmiui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [F

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    check-cast v2, [F

    move-object v1, v2

    check-cast v1, [F

    .local v1, "value":[F
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_4

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "value":[F
    :cond_1
    iget-object v2, p0, Lmiui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .local v1, "value":[I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_4

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    .end local v1    # "value":[I
    :cond_2
    iget-object v2, p0, Lmiui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmiui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .local v1, "value":[Ljava/lang/Object;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    array-length v2, v1

    if-ge v0, v2, :cond_4

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0    # "i":I
    .end local v1    # "value":[Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0, v3}, Lmiui/maml/data/Variables$ValueInfo;->setValue(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lmiui/maml/data/Variables$ValueInfo;, "Lmiui/maml/data/Variables$ValueInfo<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lmiui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    iget v0, p0, Lmiui/maml/data/Variables$ValueInfo;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/maml/data/Variables$ValueInfo;->mVersion:I

    return-void
.end method
