.class public abstract Lcom/meizu/common/alphame/AlphaMeClientNative;
.super Landroid/os/Binder;
.source "AlphaMeClientNative.java"

# interfaces
.implements Lcom/meizu/common/alphame/IAlphaMeClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.meizu.common.alphame.IAlphaMeClient"

    invoke-virtual {p0, p0, v0}, Lcom/meizu/common/alphame/AlphaMeClientNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/meizu/common/alphame/IAlphaMeClient;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "com.meizu.common.alphame.IAlphaMeClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/alphame/IAlphaMeClient;

    .local v0, "in":Lcom/meizu/common/alphame/IAlphaMeClient;
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v1, Lcom/meizu/common/alphame/AlphaMeClientProxy;

    invoke-direct {v1, p0}, Lcom/meizu/common/alphame/AlphaMeClientProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_0
    const-string v1, "com.meizu.common.alphame.IAlphaMeClient"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :sswitch_1
    sget-object v1, Lcom/meizu/common/alphame/Args;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/alphame/Args;

    .local v0, "args":Lcom/meizu/common/alphame/Args;
    invoke-virtual {p0, v0}, Lcom/meizu/common/alphame/AlphaMeClientNative;->onResult(Lcom/meizu/common/alphame/Args;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .end local v0    # "args":Lcom/meizu/common/alphame/Args;
    :sswitch_2
    sget-object v1, Lcom/meizu/common/alphame/Args;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/alphame/Args;

    .restart local v0    # "args":Lcom/meizu/common/alphame/Args;
    invoke-virtual {p0, v0}, Lcom/meizu/common/alphame/AlphaMeClientNative;->onReceiver(Lcom/meizu/common/alphame/Args;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
