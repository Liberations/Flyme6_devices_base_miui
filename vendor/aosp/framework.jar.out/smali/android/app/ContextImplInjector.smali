.class Landroid/app/ContextImplInjector;
.super Ljava/lang/Object;
.source "ContextImplInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static registerMiuiServices()V
    .locals 3

    .prologue
    const-string v0, "security"

    const-class v1, Lmiui/security/SecurityManager;

    new-instance v2, Landroid/app/ContextImplInjector$1;

    invoke-direct {v2}, Landroid/app/ContextImplInjector$1;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "locationpolicy"

    const-class v1, Landroid/location/LocationPolicyManager;

    new-instance v2, Landroid/app/ContextImplInjector$2;

    invoke-direct {v2}, Landroid/app/ContextImplInjector$2;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    return-void
.end method
