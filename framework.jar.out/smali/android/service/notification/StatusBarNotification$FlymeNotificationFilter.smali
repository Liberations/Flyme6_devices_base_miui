.class public Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;
.super Ljava/lang/Object;
.source "StatusBarNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/StatusBarNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlymeNotificationFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static NOTIFICATION_UNKNOW:Ljava/lang/String;


# instance fields
.field public category:Ljava/lang/String;

.field public categoryPriority:I

.field public correct_score:F

.field public extras:Landroid/os/Bundle;

.field public intercept:Z

.field public notificationPriority:I

.field public score:F

.field public shouldAffectIntercept:Z

.field public shouldAffectRanking:Z

.field public spamScoreUpperLimit:F

.field public tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "unknow"

    sput-object v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->NOTIFICATION_UNKNOW:Ljava/lang/String;

    new-instance v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter$1;

    invoke-direct {v0}, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter$1;-><init>()V

    sput-object v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->NOTIFICATION_UNKNOW:Ljava/lang/String;

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->category:Ljava/lang/String;

    iput v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->categoryPriority:I

    iput v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->notificationPriority:I

    iput-boolean v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    const/high16 v0, 0x42340000    # 45.0f

    iput v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->correct_score:F

    iput-boolean v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectRanking:Z

    iput-boolean v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectIntercept:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->NOTIFICATION_UNKNOW:Ljava/lang/String;

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->category:Ljava/lang/String;

    iput v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->categoryPriority:I

    iput v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->notificationPriority:I

    iput-boolean v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    const/high16 v0, 0x42340000    # 45.0f

    iput v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->correct_score:F

    iput-boolean v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectRanking:Z

    iput-boolean v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectIntercept:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->category:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->categoryPriority:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->notificationPriority:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->extras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->correct_score:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectRanking:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectIntercept:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->spamScoreUpperLimit:F

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public copy()Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;
    .locals 2

    .prologue
    new-instance v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    invoke-direct {v0}, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;-><init>()V

    .local v0, "filter":Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;
    iget-object v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->category:Ljava/lang/String;

    iput-object v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->category:Ljava/lang/String;

    iget v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->categoryPriority:I

    iput v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->categoryPriority:I

    iget v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->notificationPriority:I

    iput v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->notificationPriority:I

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->tag:Ljava/lang/String;

    iput-object v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->tag:Ljava/lang/String;

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->extras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    iput-object v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->extras:Landroid/os/Bundle;

    :cond_0
    iget-boolean v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    iput-boolean v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    iget v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score:F

    iput v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score:F

    iget v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->correct_score:F

    iput v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->correct_score:F

    iget-boolean v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectRanking:Z

    iput-boolean v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectRanking:Z

    iget-boolean v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectIntercept:Z

    iput-boolean v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectIntercept:Z

    iget v1, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->spamScoreUpperLimit:F

    iput v1, v0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->spamScoreUpperLimit:F

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isLowPriority()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x2

    iget v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->notificationPriority:I

    if-eq v2, v4, :cond_0

    iget v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->notificationPriority:I

    const/16 v3, -0x270f

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->categoryPriority:I

    if-ne v2, v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "category=%s;categoryPriority=%d,notificationPriority=%d;tag=%s;score=%f"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->category:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->categoryPriority:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget v4, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->notificationPriority:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget-object v4, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->tag:Ljava/lang/String;

    const/4 v5, 0x3

    aput-object v4, v3, v5

    iget v4, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "format":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";extras=;intercept="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";shouldAffectRanking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectRanking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";shouldAffectIntercept="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectIntercept:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", spamScoreUpperLimit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->spamScoreUpperLimit:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->categoryPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->notificationPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->correct_score:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectRanking:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectIntercept:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->spamScoreUpperLimit:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
