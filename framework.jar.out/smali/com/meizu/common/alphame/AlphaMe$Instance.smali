.class Lcom/meizu/common/alphame/AlphaMe$Instance;
.super Ljava/lang/Object;
.source "AlphaMe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/alphame/AlphaMe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Instance"
.end annotation


# static fields
.field private static INSTANCE:Lcom/meizu/common/alphame/AlphaMe;


# direct methods
.method static synthetic -get0()Lcom/meizu/common/alphame/AlphaMe;
    .locals 1

    sget-object v0, Lcom/meizu/common/alphame/AlphaMe$Instance;->INSTANCE:Lcom/meizu/common/alphame/AlphaMe;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lcom/meizu/common/alphame/AlphaMe;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/meizu/common/alphame/AlphaMe;-><init>(Lcom/meizu/common/alphame/AlphaMe;)V

    sput-object v0, Lcom/meizu/common/alphame/AlphaMe$Instance;->INSTANCE:Lcom/meizu/common/alphame/AlphaMe;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
