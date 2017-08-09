.class public interface abstract Lcom/android/internal/app/IPerfShielder;
.super Ljava/lang/Object;
.source "IPerfShielder.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IPerfShielder$Stub;
    }
.end annotation


# virtual methods
.method public abstract addActivityLaunchTime(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reportPerceptibleJank(IJJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
