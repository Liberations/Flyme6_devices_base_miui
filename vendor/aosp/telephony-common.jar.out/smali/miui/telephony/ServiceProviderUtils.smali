.class public Lmiui/telephony/ServiceProviderUtils;
.super Ljava/lang/Object;
.source "ServiceProviderUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/ServiceProviderUtils$1;,
        Lmiui/telephony/ServiceProviderUtils$NumericSpnCondition;,
        Lmiui/telephony/ServiceProviderUtils$Gid1Condition;,
        Lmiui/telephony/ServiceProviderUtils$ImsiCondition;,
        Lmiui/telephony/ServiceProviderUtils$SpnCondition;,
        Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;,
        Lmiui/telephony/ServiceProviderUtils$Condition;,
        Lmiui/telephony/ServiceProviderUtils$ServiceProvider;,
        Lmiui/telephony/ServiceProviderUtils$ServiceProviderBase;,
        Lmiui/telephony/ServiceProviderUtils$IServiceProvider;,
        Lmiui/telephony/ServiceProviderUtils$Name;
    }
.end annotation


# static fields
.field private static final ALL_SERVICE_PROVIDER:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lmiui/telephony/ServiceProviderUtils$ServiceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "ServiceProvider"

.field private static final MIUI_SPN_OVERRIDE_PATH:Ljava/lang/String; = "etc/miui-spn-conf.xml"

.field private static final MIUI_SPN_OVERRIDE_VERSION:I = 0x1

.field private static final SETTING_PREFIX:Ljava/lang/String; = "MOBILE_OPERATOR_NAME_"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lmiui/telephony/ServiceProviderUtils;->DEBUG:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lmiui/telephony/ServiceProviderUtils;->ALL_SERVICE_PROVIDER:Landroid/util/SparseArray;

    invoke-static {}, Lmiui/telephony/ServiceProviderUtils;->loadFromXml()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    sget-boolean v0, Lmiui/telephony/ServiceProviderUtils;->DEBUG:Z

    return v0
.end method

.method public static get(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "numeric"    # Ljava/lang/String;
    .param p1, "slotId"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lmiui/telephony/ServiceProviderUtils;->get(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "numeric"    # Ljava/lang/String;
    .param p1, "slotId"    # I
    .param p2, "spn"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lmiui/telephony/ServiceProviderUtils;->get(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .param p0, "numeric"    # Ljava/lang/String;
    .param p1, "phoneId"    # I
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "longName"    # Z

    .prologue
    const/4 v2, 0x0

    .local v2, "result":Ljava/lang/String;
    move v3, p1

    .local v3, "slotId":I
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    invoke-static {p0}, Lmiui/telephony/ServiceProviderUtils;->getFromSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    :cond_0
    sget v5, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-ne v3, v5, :cond_1

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v3

    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, v3, p2}, Lmiui/telephony/ServiceProviderUtils;->getServiceProvider(IILjava/lang/String;)Lmiui/telephony/ServiceProviderUtils$IServiceProvider;

    move-result-object v4

    .local v4, "sp":Lmiui/telephony/ServiceProviderUtils$IServiceProvider;
    if-eqz v4, :cond_3

    invoke-interface {v4}, Lmiui/telephony/ServiceProviderUtils$IServiceProvider;->getName()Lmiui/telephony/ServiceProviderUtils$Name;

    move-result-object v1

    .local v1, "name":Lmiui/telephony/ServiceProviderUtils$Name;
    if-nez p3, :cond_2

    iget-object v5, v1, Lmiui/telephony/ServiceProviderUtils$Name;->shortAlpha:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v1, Lmiui/telephony/ServiceProviderUtils$Name;->shortAlpha:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    :cond_2
    iget-object v2, v1, Lmiui/telephony/ServiceProviderUtils$Name;->longAlpha:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "name":Lmiui/telephony/ServiceProviderUtils$Name;
    .end local v4    # "sp":Lmiui/telephony/ServiceProviderUtils$IServiceProvider;
    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    move-object v2, p2

    :cond_5
    :goto_1
    sget-boolean v5, Lmiui/telephony/ServiceProviderUtils;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "ServiceProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numeric="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", slotId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", spn= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " => "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v2

    .restart local v1    # "name":Lmiui/telephony/ServiceProviderUtils$Name;
    .restart local v4    # "sp":Lmiui/telephony/ServiceProviderUtils$IServiceProvider;
    :cond_7
    :try_start_1
    iget-object v2, v1, Lmiui/telephony/ServiceProviderUtils$Name;->shortAlpha:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v1    # "name":Lmiui/telephony/ServiceProviderUtils$Name;
    .end local v4    # "sp":Lmiui/telephony/ServiceProviderUtils$IServiceProvider;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "ServiceProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid numeric="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8
    invoke-static {v3}, Lmiui/telephony/SubscriptionManager;->isRealSlotId(I)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lmiui/telephony/TelephonyManager;->getSimOperatorNameForSlot(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_9
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static get(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 1
    .param p0, "numeric"    # Ljava/lang/String;
    .param p1, "slotId"    # I
    .param p2, "longName"    # Z

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lmiui/telephony/ServiceProviderUtils;->get(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "numeric"    # Ljava/lang/String;
    .param p1, "spn"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lmiui/telephony/ServiceProviderUtils;->get(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "numeric"    # Ljava/lang/String;
    .param p1, "spn"    # Ljava/lang/String;
    .param p2, "longName"    # Z

    .prologue
    const/4 v0, -0x1

    invoke-static {p0, v0, p1, p2}, Lmiui/telephony/ServiceProviderUtils;->get(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFromSettings(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "numeric"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MOBILE_OPERATOR_NAME_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getServiceProvider(IILjava/lang/String;)Lmiui/telephony/ServiceProviderUtils$IServiceProvider;
    .locals 7
    .param p0, "numeric"    # I
    .param p1, "slotId"    # I
    .param p2, "spn"    # Ljava/lang/String;

    .prologue
    sget-object v4, Lmiui/telephony/ServiceProviderUtils;->ALL_SERVICE_PROVIDER:Landroid/util/SparseArray;

    invoke-virtual {v4, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;

    .local v2, "sp":Lmiui/telephony/ServiceProviderUtils$ServiceProvider;
    move-object v1, v2

    .local v1, "result":Lmiui/telephony/ServiceProviderUtils$IServiceProvider;
    if-eqz v2, :cond_3

    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isRealSlotId(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    invoke-virtual {v2}, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;->getAllVirtualServiceProvider()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;

    .local v3, "vsp":Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;
    invoke-virtual {v3, p1, p2, p0}, Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;->match(ILjava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    .end local v3    # "vsp":Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;
    :cond_2
    invoke-virtual {v2, p1, p2, p0}, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;->match(ILjava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v1, 0x0

    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    sget-boolean v4, Lmiui/telephony/ServiceProviderUtils;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "ServiceProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getServiceProvider numeric="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", slotId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", spn= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v1
.end method

.method public static isChinaMobile(II)Z
    .locals 2
    .param p0, "mcc"    # I
    .param p1, "mnc"    # I

    .prologue
    const v1, 0xb3b0

    const/16 v0, 0x1cc

    if-ne p0, v0, :cond_0

    add-int v0, v1, p1

    invoke-static {v1, v0}, Lmiui/telephony/ServiceProviderUtils;->isSameServiceProvider(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChinaMobile(Ljava/lang/String;)Z
    .locals 3
    .param p0, "numeric"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    const v1, 0xb3b0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lmiui/telephony/ServiceProviderUtils;->isSameServiceProvider(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isChinaTelecom(Ljava/lang/String;)Z
    .locals 3
    .param p0, "numeric"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    const v1, 0xb3b3

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lmiui/telephony/ServiceProviderUtils;->isSameServiceProvider(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isChinaTelecomSim(II)Z
    .locals 2
    .param p0, "mcc"    # I
    .param p1, "mnc"    # I

    .prologue
    const/16 v0, 0x1cc

    if-ne p0, v0, :cond_0

    const v0, 0xb3b3

    const v1, 0xb3b0

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lmiui/telephony/ServiceProviderUtils;->isSameServiceProvider(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChinaUnicom(Ljava/lang/String;)Z
    .locals 3
    .param p0, "numeric"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    const v1, 0xb3b1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lmiui/telephony/ServiceProviderUtils;->isSameServiceProvider(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isChinaUnicomSim(II)Z
    .locals 2
    .param p0, "mcc"    # I
    .param p1, "mnc"    # I

    .prologue
    const/16 v0, 0x1cc

    if-ne p0, v0, :cond_0

    const v0, 0xb3b1

    const v1, 0xb3b0

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lmiui/telephony/ServiceProviderUtils;->isSameServiceProvider(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChineseServiceProvider(Ljava/lang/String;)Z
    .locals 2
    .param p0, "numeric"    # Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const-string v0, "460"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameServiceProvider(II)Z
    .locals 6
    .param p0, "numeric1"    # I
    .param p1, "numeric2"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {p0, v4, v5}, Lmiui/telephony/ServiceProviderUtils;->getServiceProvider(IILjava/lang/String;)Lmiui/telephony/ServiceProviderUtils$IServiceProvider;

    move-result-object v0

    .local v0, "sp1":Lmiui/telephony/ServiceProviderUtils$IServiceProvider;
    invoke-static {p1, v4, v5}, Lmiui/telephony/ServiceProviderUtils;->getServiceProvider(IILjava/lang/String;)Lmiui/telephony/ServiceProviderUtils$IServiceProvider;

    move-result-object v1

    .local v1, "sp2":Lmiui/telephony/ServiceProviderUtils$IServiceProvider;
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lmiui/telephony/ServiceProviderUtils$IServiceProvider;->getBaseNumeric()I

    move-result v4

    invoke-interface {v1}, Lmiui/telephony/ServiceProviderUtils$IServiceProvider;->getBaseNumeric()I

    move-result v5

    if-eq v4, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lmiui/telephony/ServiceProviderUtils$IServiceProvider;->getBaseNumeric()I

    move-result v4

    if-eq v4, p1, :cond_0

    move v2, v3

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Lmiui/telephony/ServiceProviderUtils$IServiceProvider;->getBaseNumeric()I

    move-result v4

    if-eq v4, p0, :cond_0

    move v2, v3

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public static isSameServiceProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "numeric1"    # Ljava/lang/String;
    .param p1, "numeric2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lmiui/telephony/ServiceProviderUtils;->isSameServiceProvider(II)Z

    move-result v0

    goto :goto_0
.end method

.method public static isVirtualServiceProvider(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 9
    .param p0, "numeric"    # Ljava/lang/String;
    .param p1, "slotId"    # I
    .param p2, "spn"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, "inumeric":I
    sget-object v6, Lmiui/telephony/ServiceProviderUtils;->ALL_SERVICE_PROVIDER:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;

    .local v3, "sp":Lmiui/telephony/ServiceProviderUtils$ServiceProvider;
    if-eqz v3, :cond_0

    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isRealSlotId(I)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    invoke-virtual {v3}, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;->getAllVirtualServiceProvider()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;

    .local v4, "vsp":Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;
    invoke-virtual {v4, p1, p2, v2}, Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;->match(ILjava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "inumeric":I
    .end local v3    # "sp":Lmiui/telephony/ServiceProviderUtils$ServiceProvider;
    .end local v4    # "vsp":Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v6, "ServiceProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid numeric="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static loadFromXml()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    new-instance v6, Ljava/io/FileReader;

    new-instance v7, Ljava/io/File;

    invoke-static {}, Lmiui/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "etc/miui-spn-conf.xml"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const-string v6, "spns"

    invoke-static {v4, v6}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const/4 v6, 0x0

    const-string v7, "version"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .local v5, "version":I
    const-string v6, "ServiceProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SPN file loaded version is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v5, v10, :cond_1

    const-string v6, "ServiceProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SPN file version does\'nt match "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of v6, v4, Ljava/io/Closeable;

    if-eqz v6, :cond_0

    :try_start_1
    move-object v0, v4

    check-cast v0, Ljava/io/Closeable;

    move-object v6, v0

    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v5    # "version":I
    :cond_0
    :goto_0
    return-void

    .restart local v5    # "version":I
    :catch_0
    move-exception v2

    .local v2, "ioe":Ljava/io/IOException;
    const-string v6, "ServiceProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in close parser "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_1
    :try_start_2
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-eq v6, v10, :cond_3

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .local v3, "name":Ljava/lang/String;
    const-string v6, "spn"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v4}, Lmiui/telephony/ServiceProviderUtils;->loadSpn(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_2
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "version":I
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "ServiceProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in miui-spn-conf parser "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    instance-of v6, v4, Ljava/io/Closeable;

    if-eqz v6, :cond_0

    :try_start_4
    move-object v0, v4

    check-cast v0, Ljava/io/Closeable;

    move-object v6, v0

    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v6, "ServiceProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in close parser "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v5    # "version":I
    :cond_3
    instance-of v6, v4, Ljava/io/Closeable;

    if-eqz v6, :cond_0

    :try_start_5
    move-object v0, v4

    check-cast v0, Ljava/io/Closeable;

    move-object v6, v0

    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v2

    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v6, "ServiceProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in close parser "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v5    # "version":I
    :catchall_0
    move-exception v6

    instance-of v7, v4, Ljava/io/Closeable;

    if-eqz v7, :cond_4

    :try_start_6
    check-cast v4, Ljava/io/Closeable;

    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .restart local v2    # "ioe":Ljava/io/IOException;
    :cond_4
    :goto_2
    throw v6

    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v7, "ServiceProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in close parser "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static loadSpn(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 24
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/16 v21, 0x0

    const-string v22, "numeric"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .local v16, "numericAttribute":Ljava/lang/String;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v21

    if-nez v21, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static/range {v16 .. v16}, Lmiui/telephony/ServiceProviderUtils;->readNumerics(Ljava/lang/String;)[I

    move-result-object v17

    .local v17, "numerics":[I
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .local v14, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lmiui/telephony/ServiceProviderUtils$Name;>;"
    new-instance v13, Lmiui/telephony/ServiceProviderUtils$Name;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Lmiui/telephony/ServiceProviderUtils$Name;-><init>(Lmiui/telephony/ServiceProviderUtils$1;)V

    .local v13, "name":Lmiui/telephony/ServiceProviderUtils$Name;
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v9

    .local v9, "l":I
    :goto_1
    if-ge v7, v9, :cond_8

    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "attribute":Ljava/lang/String;
    const-string v21, "alpha"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v13, Lmiui/telephony/ServiceProviderUtils$Name;->longAlpha:Ljava/lang/String;

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    const-string v21, "short"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v13, Lmiui/telephony/ServiceProviderUtils$Name;->shortAlpha:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v21, "alpha-"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    const-string v21, "alpha-"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmiui/telephony/ServiceProviderUtils$Name;

    .local v12, "n":Lmiui/telephony/ServiceProviderUtils$Name;
    if-nez v12, :cond_5

    new-instance v12, Lmiui/telephony/ServiceProviderUtils$Name;

    .end local v12    # "n":Lmiui/telephony/ServiceProviderUtils$Name;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Lmiui/telephony/ServiceProviderUtils$Name;-><init>(Lmiui/telephony/ServiceProviderUtils$1;)V

    .restart local v12    # "n":Lmiui/telephony/ServiceProviderUtils$Name;
    invoke-interface {v14, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v12, Lmiui/telephony/ServiceProviderUtils$Name;->longAlpha:Ljava/lang/String;

    goto :goto_2

    .end local v12    # "n":Lmiui/telephony/ServiceProviderUtils$Name;
    :cond_6
    const-string v21, "short-"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    const-string v21, "short-"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmiui/telephony/ServiceProviderUtils$Name;

    .restart local v12    # "n":Lmiui/telephony/ServiceProviderUtils$Name;
    if-nez v12, :cond_7

    new-instance v12, Lmiui/telephony/ServiceProviderUtils$Name;

    .end local v12    # "n":Lmiui/telephony/ServiceProviderUtils$Name;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Lmiui/telephony/ServiceProviderUtils$Name;-><init>(Lmiui/telephony/ServiceProviderUtils$1;)V

    .restart local v12    # "n":Lmiui/telephony/ServiceProviderUtils$Name;
    invoke-interface {v14, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v12, Lmiui/telephony/ServiceProviderUtils$Name;->shortAlpha:Ljava/lang/String;

    goto/16 :goto_2

    .end local v4    # "attribute":Ljava/lang/String;
    .end local v12    # "n":Lmiui/telephony/ServiceProviderUtils$Name;
    :cond_8
    iget-object v0, v13, Lmiui/telephony/ServiceProviderUtils$Name;->longAlpha:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-interface {v14, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v21, 0x0

    const-string v22, "condition"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v14}, Lmiui/telephony/ServiceProviderUtils;->readConditions(Ljava/lang/String;Ljava/util/Map;)[Lmiui/telephony/ServiceProviderUtils$Condition;

    move-result-object v5

    .local v5, "conditions":[Lmiui/telephony/ServiceProviderUtils$Condition;
    const/16 v21, 0x0

    const-string v22, "mvno"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, "mvno":Ljava/lang/String;
    const-string v21, "true"

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_a

    new-instance v18, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v14, v5}, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;-><init>([ILjava/util/Map;[Lmiui/telephony/ServiceProviderUtils$Condition;)V

    .local v18, "sp":Lmiui/telephony/ServiceProviderUtils$ServiceProvider;
    move-object/from16 v3, v17

    .local v3, "arr$":[I
    array-length v10, v3

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_3
    if-ge v8, v10, :cond_9

    aget v15, v3, v8

    .local v15, "numeric":I
    sget-object v21, Lmiui/telephony/ServiceProviderUtils;->ALL_SERVICE_PROVIDER:Landroid/util/SparseArray;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .end local v15    # "numeric":I
    :cond_9
    sget-boolean v21, Lmiui/telephony/ServiceProviderUtils;->DEBUG:Z

    if-eqz v21, :cond_0

    const-string v21, "ServiceProvider"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Loaded spn: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v3    # "arr$":[I
    .end local v8    # "i$":I
    .end local v10    # "len$":I
    .end local v18    # "sp":Lmiui/telephony/ServiceProviderUtils$ServiceProvider;
    :cond_a
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    .local v19, "usedServiceProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Lmiui/telephony/ServiceProviderUtils$ServiceProvider;>;"
    move-object/from16 v3, v17

    .restart local v3    # "arr$":[I
    array-length v10, v3

    .restart local v10    # "len$":I
    const/4 v8, 0x0

    .restart local v8    # "i$":I
    :goto_4
    if-ge v8, v10, :cond_0

    aget v15, v3, v8

    .restart local v15    # "numeric":I
    sget-object v21, Lmiui/telephony/ServiceProviderUtils;->ALL_SERVICE_PROVIDER:Landroid/util/SparseArray;

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;

    .restart local v18    # "sp":Lmiui/telephony/ServiceProviderUtils$ServiceProvider;
    if-nez v18, :cond_b

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .local v6, "empty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lmiui/telephony/ServiceProviderUtils$Name;>;"
    const-string v21, ""

    new-instance v22, Lmiui/telephony/ServiceProviderUtils$Name;

    const/16 v23, 0x0

    invoke-direct/range {v22 .. v23}, Lmiui/telephony/ServiceProviderUtils$Name;-><init>(Lmiui/telephony/ServiceProviderUtils$1;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v18, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;

    .end local v18    # "sp":Lmiui/telephony/ServiceProviderUtils$ServiceProvider;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v15, v21, v22

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v6, v2}, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;-><init>([ILjava/util/Map;[Lmiui/telephony/ServiceProviderUtils$Condition;)V

    .restart local v18    # "sp":Lmiui/telephony/ServiceProviderUtils$ServiceProvider;
    sget-object v21, Lmiui/telephony/ServiceProviderUtils;->ALL_SERVICE_PROVIDER:Landroid/util/SparseArray;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .end local v6    # "empty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lmiui/telephony/ServiceProviderUtils$Name;>;"
    :cond_b
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_c

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v20, Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v14, v5}, Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;-><init>(Lmiui/telephony/ServiceProviderUtils$ServiceProvider;Ljava/util/Map;[Lmiui/telephony/ServiceProviderUtils$Condition;)V

    .local v20, "vsp":Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;->addMvno(Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;)V

    sget-boolean v21, Lmiui/telephony/ServiceProviderUtils;->DEBUG:Z

    if-eqz v21, :cond_c

    const-string v21, "ServiceProvider"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Loaded virtual spn: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v20    # "vsp":Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4
.end method

.method public static onOperatorNumericOrNameSet(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "slotId"    # I
    .param p1, "prop"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .local v0, "alpha":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "numeric":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "isNumeric":Z
    move-object v4, p1

    .local v4, "property":Ljava/lang/String;
    const-string v5, "gsm.sim.operator.alpha"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, p2

    const-string v5, "gsm.sim.operator.numeric"

    invoke-static {p0, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "gsm.sim.operator.orig.alpha"

    invoke-static {p0, v5, p2}, Lmiui/telephony/ServiceProviderUtils;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-nez v3, :cond_5

    if-eqz v1, :cond_1

    invoke-static {p0, v4, v0}, Lmiui/telephony/ServiceProviderUtils;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .end local p2    # "value":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object p2

    .restart local p2    # "value":Ljava/lang/String;
    :cond_2
    const-string v5, "gsm.sim.operator.numeric"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v3, p2

    const-string v5, "gsm.sim.operator.orig.alpha"

    invoke-static {p0, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v4, "gsm.sim.operator.alpha"

    goto :goto_0

    :cond_3
    const-string v5, "gsm.operator.alpha"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v0, p2

    const-string v5, "gsm.operator.numeric"

    invoke-static {p0, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "gsm.operator.orig.alpha"

    invoke-static {p0, v5, p2}, Lmiui/telephony/ServiceProviderUtils;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v5, "gsm.operator.numeric"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v3, p2

    const-string v5, "gsm.operator.orig.alpha"

    invoke-static {p0, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v4, "gsm.operator.alpha"

    goto :goto_0

    :cond_5
    const/4 v5, 0x1

    invoke-static {v3, p0, v0, v5}, Lmiui/telephony/ServiceProviderUtils;->get(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .local v2, "newAlpha":Ljava/lang/String;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    move-object v2, v0

    :cond_7
    if-eqz v1, :cond_8

    invoke-static {p0, v4, v2}, Lmiui/telephony/ServiceProviderUtils;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    move-object p2, v2

    goto :goto_1
.end method

.method private static readConditions(Ljava/lang/String;Ljava/util/Map;)[Lmiui/telephony/ServiceProviderUtils$Condition;
    .locals 17
    .param p0, "condition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmiui/telephony/ServiceProviderUtils$Name;",
            ">;)[",
            "Lmiui/telephony/ServiceProviderUtils$Condition;"
        }
    .end annotation

    .prologue
    .local p1, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lmiui/telephony/ServiceProviderUtils$Name;>;"
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x0

    :goto_0
    return-object v15

    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .local v4, "conditionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    const-string v15, ";"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v9, :cond_4

    aget-object v2, v1, v7

    .local v2, "c":Ljava/lang/String;
    const-string v15, ":"

    invoke-virtual {v2, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, "cs":[Ljava/lang/String;
    array-length v15, v5

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/4 v15, 0x0

    aget-object v15, v5, v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .local v13, "type":Ljava/lang/String;
    const/4 v15, 0x1

    aget-object v15, v5, v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .local v14, "value":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_1

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x2c

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    invoke-interface {v4, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v13    # "type":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const-string v15, "alpha"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    const-string v15, "alpha"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v4, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const-string v15, "numericSpn"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const-string v15, "numericSpn"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v4, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v2    # "c":Ljava/lang/String;
    .end local v5    # "cs":[Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "conditionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/telephony/ServiceProviderUtils$Condition;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v7    # "i$":I
    :cond_5
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    const-string v15, "alpha"

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .local v12, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "arr$":[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v9, v1

    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_4
    if-ge v8, v9, :cond_6

    aget-object v11, v1, v8

    .local v11, "s":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .end local v11    # "s":Ljava/lang/String;
    :cond_6
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/telephony/ServiceProviderUtils$Name;

    .local v10, "n":Lmiui/telephony/ServiceProviderUtils$Name;
    iget-object v15, v10, Lmiui/telephony/ServiceProviderUtils$Name;->longAlpha:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v15, v10, Lmiui/telephony/ServiceProviderUtils$Name;->shortAlpha:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .end local v10    # "n":Lmiui/telephony/ServiceProviderUtils$Name;
    :cond_7
    new-instance v16, Lmiui/telephony/ServiceProviderUtils$SpnCondition;

    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v15

    new-array v15, v15, [Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Lmiui/telephony/ServiceProviderUtils$SpnCondition;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v12    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_8
    const-string v15, "imsi"

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    new-instance v16, Lmiui/telephony/ServiceProviderUtils$ImsiCondition;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Lmiui/telephony/ServiceProviderUtils$ImsiCondition;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_9
    const-string v15, "gid1"

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    new-instance v16, Lmiui/telephony/ServiceProviderUtils$Gid1Condition;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Lmiui/telephony/ServiceProviderUtils$Gid1Condition;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_a
    const-string v15, "numericSpn"

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    new-instance v15, Lmiui/telephony/ServiceProviderUtils$NumericSpnCondition;

    const/16 v16, 0x0

    invoke-direct/range {v15 .. v16}, Lmiui/telephony/ServiceProviderUtils$NumericSpnCondition;-><init>(Lmiui/telephony/ServiceProviderUtils$1;)V

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v15, v15, [Lmiui/telephony/ServiceProviderUtils$Condition;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Lmiui/telephony/ServiceProviderUtils$Condition;

    goto/16 :goto_0
.end method

.method private static readNumerics(Ljava/lang/String;)[I
    .locals 10
    .param p0, "numericAttribute"    # Ljava/lang/String;

    .prologue
    const-string v9, ","

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, "numerics":[Ljava/lang/String;
    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    .local v8, "sia":Landroid/util/SparseIntArray;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .local v5, "numeric":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .local v4, "num":I
    invoke-virtual {v8, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4    # "num":I
    .end local v5    # "numeric":Ljava/lang/String;
    :cond_0
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    new-array v7, v9, [I

    .local v7, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v9, v7

    if-ge v1, v9, :cond_1

    invoke-virtual {v8, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    aput v9, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v7
.end method

.method private static setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "slotId"    # I
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v3, "propVal":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "p":[Ljava/lang/String;
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "prop":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {p0}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v5

    if-nez v5, :cond_2

    .end local p2    # "value":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .restart local p2    # "value":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_4

    const-string v4, ""

    .local v4, "str":Ljava/lang/String;
    if-eqz v1, :cond_3

    array-length v5, v1

    if-ge v0, v5, :cond_3

    aget-object v4, v1, v0

    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v4    # "str":Ljava/lang/String;
    :cond_4
    if-nez p2, :cond_5

    const-string p2, ""

    .end local p2    # "value":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_6

    add-int/lit8 v0, p0, 0x1

    :goto_2
    array-length v5, v1

    if-ge v0, v5, :cond_6

    const/16 v5, 0x2c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x1f

    if-gt v5, v6, :cond_1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/16 v6, 0x5b

    if-gt v5, v6, :cond_1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
