.class public final Lcom/android/server/wifi/SupplicantStateTrackerInjector;
.super Ljava/lang/Object;
.source "SupplicantStateTrackerInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleConnectNetwork(I)V
    .locals 0
    .param p0, "netid"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/MiuiSupplicantStateTracker;->handleConnectNetwork(I)V

    return-void
.end method

.method public static handleNetworkConnectionComplete()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/android/server/wifi/MiuiSupplicantStateTracker;->handleNetworkConnectionComplete()V

    return-void
.end method

.method public static handleNetworkConnectionFailure(Landroid/content/Context;Lcom/android/server/wifi/WifiConfigStore;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wifiConfigStore"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p2, "netid"    # I

    .prologue
    const/4 v3, 0x0

    invoke-static {p2}, Lcom/android/server/wifi/MiuiSupplicantStateTracker;->match(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/server/wifi/MiuiSupplicantStateTracker;->clear()V

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "network":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v1, v1, v3

    if-eqz v1, :cond_1

    :cond_0
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    invoke-static {p0, v0}, Lcom/android/server/wifi/MiuiSupplicantStateTracker;->sendBroadcast(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .end local v0    # "network":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    return-void
.end method

.method public static isConformAuthFailure(II)Z
    .locals 1
    .param p0, "netid"    # I
    .param p1, "authenticationFailuresCount"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/wifi/MiuiSupplicantStateTracker;->isConformAuthFailure(II)Z

    move-result v0

    return v0
.end method
