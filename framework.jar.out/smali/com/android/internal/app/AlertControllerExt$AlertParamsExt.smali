.class public Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;
.super Ljava/lang/Object;
.source "AlertControllerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertControllerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParamsExt"
.end annotation


# instance fields
.field private mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

.field public mAnchorView:Landroid/view/View;

.field public mDialogShowAtBottom:Z

.field public mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field public mMaxHeight:I

.field public mMsgAlignType:I

.field public mPositiveButtonTextColorId:I

.field public mTitleStyle:I

.field public mWidth:I

.field public mX:Ljava/lang/Integer;


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;)Lcom/android/internal/app/AlertController$AlertParams;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/internal/app/AlertController$AlertParams;)V
    .locals 2
    .param p1, "alertParams"    # Lcom/android/internal/app/AlertController$AlertParams;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->mMsgAlignType:I

    iput v1, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->mPositiveButtonTextColorId:I

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iput-object v0, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    iput-boolean v1, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->mDialogShowAtBottom:Z

    iput-object p1, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    return-void
.end method


# virtual methods
.method public setFlymeStyleParams(Lcom/android/internal/app/AlertController;)V
    .locals 3
    .param p1, "dialog"    # Lcom/android/internal/app/AlertController;

    .prologue
    iget-object v0, p1, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    .local v0, "dialogExt":Lcom/android/internal/app/AlertControllerExt;
    iget v1, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->mTitleStyle:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->mTitleStyle:I

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertControllerExt;->setTitleStyle(I)V

    :cond_0
    iget v1, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->mWidth:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->mWidth:I

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertControllerExt;->setWidth(I)V

    :cond_1
    iget v1, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->mMaxHeight:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->mMaxHeight:I

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertControllerExt;->setMaxHeight(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->mAnchorView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertControllerExt;->setAnchorView(Landroid/view/View;)V

    :cond_3
    iget v1, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->mMsgAlignType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->mMsgAlignType:I

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertControllerExt;->setMsgAlignType(I)V

    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->mX:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->mX:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertControllerExt;->setAnchorViewXCoordinate(Ljava/lang/Integer;)V

    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->mDialogShowAtBottom:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->mDialogShowAtBottom:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertControllerExt;->setShowAtAnchorView(Z)V

    :cond_6
    return-void
.end method

.method public setupListView(Lcom/android/internal/app/AlertController;)V
    .locals 3
    .param p1, "alert"    # Lcom/android/internal/app/AlertController;

    .prologue
    invoke-virtual {p1}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .local v0, "listView":Landroid/widget/ListView;
    iget-object v1, p1, Lcom/android/internal/app/AlertController;->mAlertExt:Lcom/android/internal/app/AlertControllerExt;

    iget-object v2, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget v2, v2, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    invoke-static {v1, v2}, Lcom/android/internal/app/AlertControllerExt;->-set0(Lcom/android/internal/app/AlertControllerExt;I)I

    iget-object v1, p0, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/internal/app/AlertControllerExt$AlertParamsExt$1;-><init>(Lcom/android/internal/app/AlertControllerExt$AlertParamsExt;Lcom/android/internal/app/AlertController;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    return-void
.end method
