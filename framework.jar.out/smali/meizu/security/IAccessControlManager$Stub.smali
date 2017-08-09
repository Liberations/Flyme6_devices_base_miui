.class public abstract Lmeizu/security/IAccessControlManager$Stub;
.super Landroid/os/Binder;
.source "IAccessControlManager.java"

# interfaces
.implements Lmeizu/security/IAccessControlManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu/security/IAccessControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu/security/IAccessControlManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "meizu.security.IAccessControlManager"

.field static final TRANSACTION_addAccessControlPass:I = 0x6

.field static final TRANSACTION_addAccessControlPassMz:I = 0x7

.field static final TRANSACTION_addControlPackage:I = 0xa

.field static final TRANSACTION_addTopAppAccessControlPass:I = 0x11

.field static final TRANSACTION_checkAccessControl:I = 0x12

.field static final TRANSACTION_checkAccessControlPass:I = 0x5

.field static final TRANSACTION_checkControlPackageType:I = 0xc

.field static final TRANSACTION_checkVideoActivity:I = 0x14

.field static final TRANSACTION_clearAccessControlPass:I = 0x9

.field static final TRANSACTION_getControlGuardPackages:I = 0xe

.field static final TRANSACTION_getControlOpenPackages:I = 0x13

.field static final TRANSACTION_getControlPasswordPackages:I = 0xd

.field static final TRANSACTION_isAccessControlGuardEnable:I = 0x4

.field static final TRANSACTION_isAccessControlPasswordEnable:I = 0x3

.field static final TRANSACTION_removeAccessControlPass:I = 0x8

.field static final TRANSACTION_removeControlPackage:I = 0xb

.field static final TRANSACTION_screenTurnedOff:I = 0xf

.field static final TRANSACTION_screenTurnedOn:I = 0x10

.field static final TRANSACTION_setAccessControlGuardEnable:I = 0x2

.field static final TRANSACTION_setAccessControlPasswordEnable:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "meizu.security.IAccessControlManager"

    invoke-virtual {p0, p0, v0}, Lmeizu/security/IAccessControlManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmeizu/security/IAccessControlManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "meizu.security.IAccessControlManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmeizu/security/IAccessControlManager;

    if-eqz v1, :cond_1

    check-cast v0, Lmeizu/security/IAccessControlManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lmeizu/security/IAccessControlManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmeizu/security/IAccessControlManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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
    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    :sswitch_0
    const-string v9, "meizu.security.IAccessControlManager"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v9, 0x1

    return v9

    :sswitch_1
    const-string v9, "meizu.security.IAccessControlManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_0

    const/4 v2, 0x1

    .local v2, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v2}, Lmeizu/security/IAccessControlManager$Stub;->setAccessControlPasswordEnable(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    .end local v2    # "_arg0":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Z
    goto :goto_0

    .end local v2    # "_arg0":Z
    :sswitch_2
    const-string v9, "meizu.security.IAccessControlManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    const/4 v2, 0x1

    .restart local v2    # "_arg0":Z
    :goto_1
    invoke-virtual {p0, v2}, Lmeizu/security/IAccessControlManager$Stub;->setAccessControlGuardEnable(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    .end local v2    # "_arg0":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Z
    goto :goto_1

    .end local v2    # "_arg0":Z
    :sswitch_3
    const-string v9, "meizu.security.IAccessControlManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmeizu/security/IAccessControlManager$Stub;->isAccessControlPasswordEnable()Z

    move-result v8

    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_2

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .end local v8    # "_result":Z
    :sswitch_4
    const-string v9, "meizu.security.IAccessControlManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmeizu/security/IAccessControlManager$Stub;->isAccessControlGuardEnable()Z

    move-result v8

    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_3

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    .end local v8    # "_result":Z
    :sswitch_5
    const-string v9, "meizu.security.IAccessControlManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lmeizu/security/IAccessControlManager$Stub;->checkAccessControlPass(Ljava/lang/String;)Z

    move-result v8

    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_4

    const/4 v9, 0x1

    :goto_4
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_4
    const/4 v9, 0x0

    goto :goto_4

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_6
    const-string v9, "meizu.security.IAccessControlManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lmeizu/security/IAccessControlManager$Stub;->addAccessControlPass(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string v9, "meizu.security.IAccessControlManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_5

    const/4 v5, 0x1

    .local v5, "_arg1":Z
    :goto_5
    invoke-virtual {p0, v1, v5}, Lmeizu/security/IAccessControlManager$Stub;->addAccessControlPassMz(Ljava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    .end local v5    # "_arg1":Z
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Z
    goto :goto_5

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Z
    :sswitch_8
    const-string v9, "meizu.security.IAccessControlManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lmeizu/security/IAccessControlManager$Stub;->removeAccessControlPass(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_9
    const-string v9, "meizu.security.IAccessControlManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmeizu/security/IAccessControlManager$Stub;->clearAccessControlPass()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    :sswitch_a
    const-string v9, "meizu.security.IAccessControlManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lmeizu/security/IAccessControlManager$Stub;->addControlPackage(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :sswitch_b
    const-string v9, "meizu.security.IAccessControlManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lmeizu/security/IAccessControlManager$Stub;->removeControlPackage(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :sswitch_c
    const-string v9, "meizu.security.IAccessControlManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lmeizu/security/IAccessControlManager$Stub;->checkControlPackageType(Ljava/lang/String;)I

    move-result v6

    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_d
    const-string v9, "meizu.security.IAccessControlManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmeizu/security/IAccessControlManager$Stub;->getControlPasswordPackages()Ljava/util/List;

    move-result-object v7

    .local v7, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v9, 0x1

    return v9

    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_e
    const-string v9, "meizu.security.IAccessControlManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmeizu/security/IAccessControlManager$Stub;->getControlGuardPackages()Ljava/util/List;

    move-result-object v7

    .restart local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v9, 0x1

    return v9

    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_f
    const-string v9, "meizu.security.IAccessControlManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lmeizu/security/IAccessControlManager$Stub;->screenTurnedOff(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    .end local v0    # "_arg0":I
    :sswitch_10
    const-string v9, "meizu.security.IAccessControlManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmeizu/security/IAccessControlManager$Stub;->screenTurnedOn()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    :sswitch_11
    const-string v9, "meizu.security.IAccessControlManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmeizu/security/IAccessControlManager$Stub;->addTopAppAccessControlPass()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    return v9

    :sswitch_12
    const-string v9, "meizu.security.IAccessControlManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lmeizu/security/IAccessControlManager$Stub;->checkAccessControl(Ljava/lang/String;)Z

    move-result v8

    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_6

    const/4 v9, 0x1

    :goto_6
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_6
    const/4 v9, 0x0

    goto :goto_6

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_13
    const-string v9, "meizu.security.IAccessControlManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmeizu/security/IAccessControlManager$Stub;->getControlOpenPackages()Ljava/util/List;

    move-result-object v7

    .restart local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v9, 0x1

    return v9

    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_14
    const-string v9, "meizu.security.IAccessControlManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v4}, Lmeizu/security/IAccessControlManager$Stub;->checkVideoActivity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_7

    const/4 v9, 0x1

    :goto_7
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_7
    const/4 v9, 0x0

    goto :goto_7

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
