.class public Lcom/android/server/display/DisplayPowerControllerInjector;
.super Ljava/lang/Object;
.source "DisplayPowerControllerInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustBrightnessIfNeeded(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldBrightness"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x3

    const-string v2, "persist.sys.smartcover_mode"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_1

    .local v0, "isLattice":Z
    :goto_0
    if-eqz p1, :cond_0

    invoke-static {p0}, Landroid/provider/MiuiSettings$System;->isInSmallWindowMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/16 p1, 0xff

    .end local p1    # "oldBrightness":I
    :cond_0
    return p1

    .end local v0    # "isLattice":Z
    .restart local p1    # "oldBrightness":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
