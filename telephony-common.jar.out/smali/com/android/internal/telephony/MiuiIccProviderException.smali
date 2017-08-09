.class public Lcom/android/internal/telephony/MiuiIccProviderException;
.super Ljava/lang/RuntimeException;
.source "MiuiIccProviderException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MiuiIccProviderException$1;
    }
.end annotation


# static fields
.field public static final ERROR_ADN_LIST_NOT_EXIST:I = -0x3f2

.field public static final ERROR_ANR_FULL:I = -0x3f0

.field public static final ERROR_ANR_TOO_LONG:I = -0x3f1

.field public static final ERROR_EMAIL_FULL:I = -0x3f3

.field public static final ERROR_EMAIL_TOO_LONG:I = -0x3f4

.field public static final ERROR_GENERIC_FAILURE:I = -0x3ea

.field public static final ERROR_ICC_CARD_RESET:I = -0x3f5

.field public static final ERROR_NOT_READY:I = -0x3ee

.field public static final ERROR_NO_ERROR:I = 0x0

.field public static final ERROR_NUMBER_TOO_LONG:I = -0x3eb

.field public static final ERROR_PASSWORD_ERROR:I = -0x3ef

.field public static final ERROR_STORAGE_FULL:I = -0x3ed

.field public static final ERROR_TEXT_TOO_LONG:I = -0x3ec

.field public static final ERROR_UNKNOWN:I = -0x3e9

.field public static final ERROR_UNKNOWN_EF:I = -0x3f6

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mError:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/MiuiIccProviderException;->mError:I

    return-void
.end method

.method public static getErrorCauseFromException(Ljava/lang/Throwable;)I
    .locals 5
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v2, 0x0

    .local v2, "ret":I
    if-eqz p0, :cond_0

    instance-of v3, p0, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .local v0, "ce":Lcom/android/internal/telephony/CommandException;
    sget-object v3, Lcom/android/internal/telephony/MiuiIccProviderException$1;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    const/16 v2, -0x3e9

    .end local v0    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_0
    :goto_0
    return v2

    .restart local v0    # "ce":Lcom/android/internal/telephony/CommandException;
    :pswitch_0
    const/16 v2, -0x3ea

    goto :goto_0

    :pswitch_1
    const/16 v2, -0x3ef

    goto :goto_0

    .end local v0    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_1
    instance-of v3, p0, Lcom/android/internal/telephony/MiuiIccProviderException;

    if-eqz v3, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/android/internal/telephony/MiuiIccProviderException;

    .local v1, "ipe":Lcom/android/internal/telephony/MiuiIccProviderException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/MiuiIccProviderException;->getError()I

    move-result v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method getError()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/MiuiIccProviderException;->mError:I

    return v0
.end method
