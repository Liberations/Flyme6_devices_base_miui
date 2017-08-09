.class public Lcom/android/internal/telephony/gsm/GsmCallTrackerInjector;
.super Ljava/lang/Object;
.source "GsmCallTrackerInjector.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GsmCallTrackerInjector"

.field private static sIsHD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/GsmCallTrackerInjector;->sIsHD:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isSpecialNumber(Lcom/android/internal/telephony/Phone;)Z
    .locals 10
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    new-array v6, v9, [Ljava/lang/String;

    const-string v9, "10010"

    aput-object v9, v6, v7

    const-string v9, "114"

    aput-object v9, v6, v8

    .local v6, "specialNumArray":[Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .local v1, "currentCall":Lcom/android/internal/telephony/Call;
    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v8, :cond_3

    move v7, v8

    .end local v1    # "currentCall":Lcom/android/internal/telephony/Call;
    :cond_0
    :goto_1
    return v7

    :cond_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .restart local v1    # "currentCall":Lcom/android/internal/telephony/Call;
    goto :goto_0

    .end local v1    # "currentCall":Lcom/android/internal/telephony/Call;
    :cond_2
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .restart local v1    # "currentCall":Lcom/android/internal/telephony/Call;
    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .local v2, "currentNumber":Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v2}, Lmiui/telephony/TelephonyManagerEx;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v7, v8

    goto :goto_1

    :cond_4
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .local v5, "num":Ljava/lang/String;
    invoke-static {v5, v2, v8}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_5

    move v7, v8

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static sendSpeechCodecIsHDBroadcast(Lcom/android/internal/telephony/Phone;Z)V
    .locals 7
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "isHD"    # Z

    .prologue
    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move v2, p1

    .local v2, "localHD":Z
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .local v3, "numeric":Ljava/lang/String;
    invoke-static {v3}, Lmiui/telephony/ServiceProviderUtils;->isChinaUnicom(Ljava/lang/String;)Z

    move-result v1

    .local v1, "isChinaUnicom":Z
    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerInjector;->isSpecialNumber(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    if-ne v4, v5, :cond_3

    :cond_2
    const/4 v2, 0x0

    :cond_3
    sget-boolean v4, Lcom/android/internal/telephony/gsm/GsmCallTrackerInjector;->sIsHD:Z

    if-eq v4, v2, :cond_0

    sput-boolean v2, Lcom/android/internal/telephony/gsm/GsmCallTrackerInjector;->sIsHD:Z

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTrackerInjector;->setSpeechCodecHD(Lcom/android/internal/telephony/Phone;Z)V

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SPEECH_CODEC_IS_HD"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const/high16 v4, 0x20000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "is_hd"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-static {v0, v4}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    const-string v4, "GsmCallTrackerInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendSpeechCodecIsHDBroadcast "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static setConnectionAudioQuality(Lcom/android/internal/telephony/Call;Z)V
    .locals 4
    .param p0, "call"    # Lcom/android/internal/telephony/Call;
    .param p1, "isHD"    # Z

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    .local v1, "connections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .local v0, "connection":Lcom/android/internal/telephony/Connection;
    if-eqz p1, :cond_0

    const/4 v3, 0x2

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/Connection;->setAudioQuality(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    .end local v0    # "connection":Lcom/android/internal/telephony/Connection;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private static setSpeechCodecHD(Lcom/android/internal/telephony/Phone;Z)V
    .locals 1
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "isHD"    # Z

    .prologue
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerInjector;->setConnectionAudioQuality(Lcom/android/internal/telephony/Call;Z)V

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerInjector;->setConnectionAudioQuality(Lcom/android/internal/telephony/Call;Z)V

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerInjector;->setConnectionAudioQuality(Lcom/android/internal/telephony/Call;Z)V

    return-void
.end method
