.class public Lmiui/maml/ScreenElementRootFactory$Parameter;
.super Ljava/lang/Object;
.source "ScreenElementRootFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ScreenElementRootFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPath:Ljava/lang/String;

.field private mResourceLoader:Lmiui/maml/ResourceLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/maml/ScreenElementRootFactory$Parameter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lmiui/maml/ScreenElementRootFactory$Parameter;->mPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceLoader;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loader"    # Lmiui/maml/ResourceLoader;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/maml/ScreenElementRootFactory$Parameter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lmiui/maml/ScreenElementRootFactory$Parameter;->mResourceLoader:Lmiui/maml/ResourceLoader;

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/ScreenElementRootFactory$Parameter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/ScreenElementRootFactory$Parameter;

    .prologue
    iget-object v0, p0, Lmiui/maml/ScreenElementRootFactory$Parameter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/maml/ScreenElementRootFactory$Parameter;)Lmiui/maml/ResourceLoader;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/ScreenElementRootFactory$Parameter;

    .prologue
    iget-object v0, p0, Lmiui/maml/ScreenElementRootFactory$Parameter;->mResourceLoader:Lmiui/maml/ResourceLoader;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/maml/ScreenElementRootFactory$Parameter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/ScreenElementRootFactory$Parameter;

    .prologue
    iget-object v0, p0, Lmiui/maml/ScreenElementRootFactory$Parameter;->mPath:Ljava/lang/String;

    return-object v0
.end method
